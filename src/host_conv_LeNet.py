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

import time
import numpy as np

def parse_params_header(file_name):
    with open(file_name, 'r') as f:
        content = f.read()
        
    pattern = r'static const unsigned (\w+) = (\d+);'
    matches = re.findall(pattern, content)

    t_config = {}
    for name, value in matches:
        t_config[name] = int(value)

    return t_config

def runKernel(opt):
    time_used = 0
    torch.manual_seed(0)
    t_config = parse_params_header("/mnt/shared/home/tz32/scalehls_vitis_test/src/params_LeNet.hpp")
    # Define the convolutional layer using torch
    conv_layer = nn.Conv2d(in_channels=t_config["n_chan"], 
                           out_channels=t_config["n_filt"], 
                           kernel_size=(t_config["filt_height"], t_config["filt_width"]), 
                           stride=(t_config["stride_height"], t_config["stride_width"]))
    
    # Initialize the weights and biases here as per your requirements
    nn.init.xavier_uniform_(conv_layer.weight)
    nn.init.zeros_(conv_layer.bias)
    
    # # ROW-FIRST
    # weights = conv_layer.weight.view(-1).tolist()
    # biases = conv_layer.bias.view(-1).tolist()
    
    # input_shape = (1, t_config["n_chan"], t_config["in_height"], t_config["in_width"])
    # inputs = torch.randn(*input_shape)
    # inputs_list = inputs.view(-1).tolist()

    # golden_out = conv_layer(inputs).view(-1).tolist()
    
    
    # COLUM FIRST
    weights = conv_layer.weight.permute(3, 2, 1, 0).contiguous().view(-1).tolist()
    biases = conv_layer.bias.view(-1).tolist()
    input_shape = (1, t_config["n_chan"], t_config["in_height"], t_config["in_width"])
    inputs = torch.randn(*input_shape)
    # Flatten inputs in column-first order
    inputs_list = inputs.permute(3, 2, 1, 0).contiguous().view(-1).tolist()
    # Compute golden_out
    golden_out = conv_layer(inputs).permute(3, 2, 1, 0).contiguous().view(-1).tolist()

    opt.DATA_SIZE = max(len(inputs_list), len(weights), len(biases))
    
    try:
        d = pyxrt.device(opt.index)
        xbin = pyxrt.xclbin(opt.bitstreamFile)
        uuid = d.load_xclbin(xbin)
    except:
        print("[Expected Warning] Failed to load xclbin using original code, switching to modified version")
        d = pyxrt.device(1)
        xbin = pyxrt.xclbin(opt.bitstreamFile)
        uuid = d.load_xclbin(xbin)
        print("UUID loaded successfully")

    kernellist = xbin.get_kernels()

    rule = re.compile("hls4ml_conv2d_LeNet*")
    kernel = list(filter(lambda val: rule.match(val.get_name()), kernellist))[0]
    kHandle = pyxrt.kernel(d, uuid, kernel.get_name(), pyxrt.kernel.shared)

    boHandle1 = pyxrt.bo(d, opt.DATA_SIZE * 4, pyxrt.bo.normal, kHandle.group_id(0))
    boHandle2 = pyxrt.bo(d, opt.DATA_SIZE * 4, pyxrt.bo.normal, kHandle.group_id(1))
    boHandle3 = pyxrt.bo(d, opt.DATA_SIZE * 4, pyxrt.bo.normal, kHandle.group_id(2))
    boHandle4 = pyxrt.bo(d, opt.DATA_SIZE * 4, pyxrt.bo.normal, kHandle.group_id(3))

    bo1 = boHandle1.map()
    bo2 = boHandle2.map()
    bo3 = boHandle3.map()
    bo4 = boHandle4.map()
    
    # Transfer input and weight data into buffers
    zero_float = struct.pack('f', 0.0)
    
    for i in range(opt.DATA_SIZE):
        bo1[i * 4: (i + 1) * 4] = zero_float
        bo2[i * 4: (i + 1) * 4] = zero_float
        bo3[i * 4: (i + 1) * 4] = zero_float
        bo4[i * 4: (i + 1) * 4] = zero_float

    for i in range(opt.DATA_SIZE):
        if i < len(inputs_list):
            bo1[i * 4: (i + 1) * 4] = struct.pack('f', inputs_list[i])
        if i < len(weights):
            bo3[i * 4: (i + 1) * 4] = struct.pack('f', weights[i])
        if i < len(biases):
            bo4[i * 4: (i + 1) * 4] = struct.pack('f', biases[i])

    boHandle1.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, opt.DATA_SIZE * 4, 0)
    boHandle3.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, opt.DATA_SIZE * 4, 0)
    boHandle4.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, opt.DATA_SIZE * 4, 0)

    print("Start the kernel")
    
    start_time = time.time()
    
    run = kHandle(boHandle1, boHandle2, boHandle3, boHandle4, opt.DATA_SIZE)
    state = run.wait()
    
    time_used = time.time()-start_time
    
    print("Kernel run is done") 
    print("Get the output data from the device and validate it")
    boHandle2.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_FROM_DEVICE, opt.DATA_SIZE * 4, 0)
    
    output_floats = []
    for i in range(opt.DATA_SIZE):
        output_byte = bo2[i * 4: (i + 1) * 4]
        output_float = struct.unpack('f', output_byte)[0]
        output_floats.append(output_float)

   
    # Compare the output with the golden_out
    for i in range(5):
        # print("Output Num ", i, "= ", output_floats[i], "Golden = ", golden_out[i])
        print("Output Num ", i, "= ", output_floats[i])
        print("Golden Num = ", golden_out[i])
        print("")


    print("====================")
    print("[DEBUG BEGIN]")

    print("[DEBUG END]")
    print("====================")
    # Validate the output
    tolerance = 1e-5  # Define the tolerance for floating-point comparison
    is_correct = 1
    failed_num = 0
    for i in range(len(output_floats)):
        if abs(output_floats[i] - golden_out[i]) > tolerance:
            is_correct = 0
            failed_num += 1
    if is_correct == 1: 
        print("[Assertion Passed]")
    else:
        print("[Assertion Failed] Failed with ", failed_num, " entiries")
        
    return time_used

def main(args):
    opt = Options()
    Options.getOptions(opt, args)
    time_list = []
    try:
        for i in range(1):
            this_run_time = runKernel(opt)
            time_list.append(this_run_time)
        print("RUN IS DONE")
        print("Time List:")
        print(time_list)
        print("Average Time = ", np.mean(time_list))
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
