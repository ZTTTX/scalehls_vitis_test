#!/usr/bin/python3

import os
import sys
import re
import struct
import time
# Following found in PYTHONPATH setup by XRT
import pyxrt
import numpy as np
sys.path.append('/mnt/shared/home/tz32/Vitis_Accel_Examples/host_py/hello_world_py/src')

from utils_binding import *

import torch
import torch.nn as nn

def initialize_weights(layer):
    torch.manual_seed(123)
    if isinstance(layer, nn.Linear):
        nn.init.xavier_uniform_(layer.weight)

def randomize_inputs_weights(opt):
    # Define the module layers
    torch.manual_seed(123)
    layers = nn.Sequential(
        nn.Flatten(),
        nn.Linear(32 * 32 * 1, 64),
        nn.ReLU()
    )
    layers.apply(initialize_weights)
    weights = []
    for param in layers.parameters():
        weights.extend(param.view(-1).tolist())

    # Generate random inputs
    input_shape = (1, 1, 32, 32)  # Adjust the shape according to your module's input shape

    inputs = torch.randn(*input_shape)
    inputs_list = inputs.view(-1).tolist()

    return inputs_list, weights

def runKernel(opt, xclbinName, xclbinPath, inputs_list, weights):
    opt.DATA_SIZE = max(len(inputs_list), len(weights))

    try:
        d = pyxrt.device(opt.index)
        xbin = pyxrt.xclbin(xclbinPath)
        uuid = d.load_xclbin(xbin)
    except:
        print("[Warning] Failed to load xclbin using original code, switching to modified version")
        d = pyxrt.device(1)
        xbin = pyxrt.xclbin(xclbinPath)
        uuid = d.load_xclbin(xbin)
        print("UUID loaded successfully")

    kernellist = xbin.get_kernels()

    rule = re.compile(xclbinName + "*")
    kernel = list(filter(lambda val: rule.match(val.get_name()), kernellist))[0]
    kHandle = pyxrt.kernel(d, uuid, kernel.get_name(), pyxrt.kernel.shared)

    boHandle1 = pyxrt.bo(d, opt.DATA_SIZE * 4, pyxrt.bo.normal, kHandle.group_id(0))
    boHandle2 = pyxrt.bo(d, opt.DATA_SIZE * 4, pyxrt.bo.normal, kHandle.group_id(1))
    boHandle3 = pyxrt.bo(d, opt.DATA_SIZE * 4, pyxrt.bo.normal, kHandle.group_id(2))

    bo1 = boHandle1.map()
    bo2 = boHandle2.map()
    bo3 = boHandle3.map()

    # Transfer input and weight data into buffers
    zero_float = struct.pack('f', 0.0)

    for i in range(opt.DATA_SIZE):
        bo1[i * 4: (i + 1) * 4] = zero_float
        bo2[i * 4: (i + 1) * 4] = zero_float
        bo3[i * 4: (i + 1) * 4] = zero_float

    for i in range(opt.DATA_SIZE):
        if i < len(inputs_list):
            bo1[i * 4: (i + 1) * 4] = struct.pack('f', inputs_list[i])
        if i < len(weights):
            bo3[i * 4: (i + 1) * 4] = struct.pack('f', weights[i])

    boHandle1.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, opt.DATA_SIZE * 4, 0)
    boHandle3.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, opt.DATA_SIZE * 4, 0)

    print("Start the kernel")
    start_t = time.time()
    run = kHandle(boHandle1, boHandle2, boHandle3, opt.DATA_SIZE)
    print("Now wait for the kernel to finish")
    state = run.wait()
    run_t = time.time() - start_t
    print("Get the output data from the device and validate it")
    boHandle2.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_FROM_DEVICE, opt.DATA_SIZE * 4, 0)

    output_floats = []
    for i in range(opt.DATA_SIZE):
        output_byte = bo2[i * 4: (i + 1) * 4]
        output_float = struct.unpack('f', output_byte)[0]
        output_floats.append(output_float)

    return output_floats, run_t

def main(args):
    opt = Options()
    Options.getOptions(opt, args)
    total_basline_time = []
    total_replaced_time = []
    try:
        inputs_list, weights = randomize_inputs_weights(opt)

        # Run the bin.xclbin
        for j in range(50):
            xclbin = "/mnt/shared/home/tz32/scalehls_vitis_test/build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/largeNet_4.xclbin"
            bin_output, t_baseline = runKernel(opt, "largeNet_4", xclbin, inputs_list, weights)

            total_basline_time.append(t_baseline)

        print("First 10 Outputs:")
        for i in range(10):
            print("Output Num ", i, "= ", bin_output[i])
        print("Time for baseline: ", t_baseline)
        print()
        print(total_basline_time)
        print()
        print("average time for ", j + 1, 'runs = ', np.average(total_basline_time))
        print("RUN IS DONE")
        return 0
    except OSError as o:
        print(o)
        print("RUN FAILED with OSError")
        return -o.errno
    except AssertionError as a:
        print(a)
        print("RUN FAILED with AssertionError")
        return -1
    except Exception as e:
        print(e)
        print("RUN FAILED with Exception")
        return -1

if __name__ == "__main__":
    os.environ["Runtime.xrt_bo"] = "false"
    result = main(sys.argv)
    sys.exit(result)
