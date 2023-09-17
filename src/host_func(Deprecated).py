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

def runKernel(opt):
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
    input_shape = (1, 1, 32, 32)
    inputs = torch.randn(*input_shape)
    inputs_list = inputs.view(-1).tolist()

    # Compute the expected output
    golden_out = layers(inputs).view(-1).tolist()

    try:
        d = pyxrt.device(opt.index)
        xbin = pyxrt.xclbin(opt.bitstreamFile)
        uuid = d.load_xclbin(xbin)
    except:
        print("[Warning] Failed to load xclbin using original code, switching to modified version")
        d = pyxrt.device(1)
        xbin = pyxrt.xclbin(opt.bitstreamFile)
        uuid = d.load_xclbin(xbin)
        print("UUID loaded successfully")

    kernellist = xbin.get_kernels()
    kernel = [k for k in kernellist if "hls4ml_conv2d" in k.get_name()][0]
    kHandle = pyxrt.kernel(d, uuid, kernel.get_name(), pyxrt.kernel.shared)

    boHandle_input = pyxrt.bo(d, t_config.in_height * t_config.in_width * t_config.n_chan * 4, pyxrt.bo.normal, kHandle.group_id(0))
    boHandle_output = pyxrt.bo(d, t_config.out_height * t_config.out_width * t_config.n_filt * 4, pyxrt.bo.normal, kHandle.group_id(1))
    boHandle_weights = pyxrt.bo(d, t_config.filt_height * t_config.filt_width * t_config.n_chan * t_config.n_filt * 4, pyxrt.bo.normal, kHandle.group_id(2))
    boHandle_biases = pyxrt.bo(d, t_config.n_filt * 4, pyxrt.bo.normal, kHandle.group_id(3))

    bo_input = boHandle_input.map()
    bo_output = boHandle_output.map()
    bo_weights = boHandle_weights.map()
    bo_biases = boHandle_biases.map()

    for i, val in enumerate(inputs_list):
        bo_input[i*4:(i+1)*4] = struct.pack('f', val)

    for i, w in enumerate(weights):
        bo_weights[i*4:(i+1)*4] = struct.pack('f', w)

    for i, b in enumerate(biases):  # assuming you have a list "biases" for the biases data
        bo_biases[i*4:(i+1)*4] = struct.pack('f', b)

    boHandle_input.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, len(inputs_list) * 4, 0)
    boHandle_weights.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, len(weights) * 4, 0)
    boHandle_biases.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, len(biases) * 4, 0)

    print("Start the kernel")
    run = kHandle(boHandle_input, boHandle_output, boHandle_weights, boHandle_biases)
    print("Now wait for the kernel to finish")
    state = run.wait()

    print("Get the output data from the device and validate it")
    boHandle_output.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_FROM_DEVICE, t_config.out_height * t_config.out_width * t_config.n_filt * 4, 0)
    
    output_floats = []
    for i in range(t_config.out_height * t_config.out_width * t_config.n_filt):
        output_byte = bo_output[i * 4: (i + 1) * 4]
        output_float = struct.unpack('f', output_byte)[0]
        output_floats.append(output_float)

    for i in range(10):
        print("Output Num ", i, "= ", output_floats[i])

    tolerance = 1e-5  # Define the tolerance for floating-point comparison
    for i in range(10):
        if abs(output_floats[i] - golden_out[i]) > tolerance:
            print("[Assertion Failed] Computed value does not match the reference.")
            break

def main(args):
    opt = Options()
    Options.getOptions(opt, args)
    try:
        runKernel(opt)
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
