#!/usr/bin/python3

import os
import sys
import re
import struct

# Following found in PYTHONPATH setup by XRT
import pyxrt

sys.path.append('/mnt/shared/home/tz32/Vitis_Accel_Examples/host_py/hello_world_py/src')

from utils_binding import *

import torch
import torch.nn as nn

def initialize_weights(layer):
    if isinstance(layer, nn.Linear):
        nn.init.xavier_uniform_(layer.weight)

def randomize_inputs_weights(opt):
    # Define the module layers
    layers = nn.Sequential(
        nn.Flatten(),
        nn.Linear(32 * 32 * 1, 10),
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

def calculate_golden_output(inputs_list, weights):
    # Define the module layers
    layers = nn.Sequential(
        nn.Flatten(),
        nn.Linear(32 * 32 * 1, 10),
        nn.ReLU()
    )

    layers.apply(initialize_weights)

    # Set the weights of the module
    index = 0
    for param in layers.parameters():
        param.data = torch.tensor(weights[index:index + param.numel()]).view(param.size())
        index += param.numel()

    # Set the inputs of the module
    inputs = torch.tensor(inputs_list).view(1, 1, 32, 32)

    # Forward pass through the module to calculate the golden output
    with torch.no_grad():
        golden_output = layers(inputs)

    return golden_output.view(-1).tolist()

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
    run = kHandle(boHandle1, boHandle2, boHandle3, opt.DATA_SIZE)
    print("Now wait for the kernel to finish")
    state = run.wait()

    print("Get the output data from the device and validate it")
    boHandle2.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_FROM_DEVICE, opt.DATA_SIZE * 4, 0)

    output_floats = []
    for i in range(opt.DATA_SIZE):
        output_byte = bo2[i * 4: (i + 1) * 4]
        output_float = struct.unpack('f', output_byte)[0]
        output_floats.append(output_float)

    return output_floats

def main(args):
    opt = Options()
    Options.getOptions(opt, args)
    try:
        inputs_list, weights = randomize_inputs_weights(opt)

        # Run the forward.xclbin
        forward_xclbin = "/mnt/shared/home/tz32/scalehls_vitis_test/build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/forward.xclbin"
        forward_output = runKernel(opt, "forward", forward_xclbin, inputs_list, weights)

        # Run the cemit_replaced.xclbin
        cemit_replaced_xclbin = "/mnt/shared/home/tz32/scalehls_vitis_test/build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced_v2.xclbin"
        cemit_replaced_output = runKernel(opt, "cemit_replaced_v2", cemit_replaced_xclbin, inputs_list, weights)

        # Calculate the golden output
        golden_output = calculate_golden_output(inputs_list, weights)

        print("Outputs from forward.xclbin:")
        for i in range(10):
            print("Output Num ", i, "= ", forward_output[i])

        print()

        print("Outputs from cemit_replaced.xclbin:")
        for i in range(10):
            print("Output Num ", i, "= ", cemit_replaced_output[i])

        print()

        print("Golden Outputs:")
        for i in range(len(golden_output)):
            print("Output Num ", i, "= ", golden_output[i])

        print()

        # Compare the outputs
        tolerance = 1e-5  # Define the tolerance for floating-point comparison
        for i in range(len(forward_output)):
            if abs(forward_output[i] - cemit_replaced_output[i]) > tolerance:
                print("[Assertion Failed] Computed values do not match between forward and cemit_replaced.")
                break

            if abs(forward_output[i] - golden_output[i]) > tolerance:
                print("[Assertion Failed] Computed values do not match the golden output.")
                break


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
