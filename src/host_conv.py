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


def parse_params_header(file_name):
    with open(file_name, 'r') as f:
        content = f.read()
        
    pattern = r'static const unsigned (\w+) = (\d+);'
    matches = re.findall(pattern, content)

    t_config = {}
    for name, value in matches:
        t_config[name] = int(value)

    return t_config

def GenMatrix(in_height, in_width):
    conv_layer = nn.Conv2d(in_channels=1, out_channels=1, kernel_size=(5,5), stride=(1, 1))
    
    # Initialize the weights and biases here as per your requirements
    nn.init.xavier_uniform_(conv_layer.weight)
    nn.init.zeros_(conv_layer.bias)

    # COLUM FIRST
    weights = conv_layer.weight.permute(3, 2, 1, 0).contiguous().view(-1).tolist()
    biases = conv_layer.bias.view(-1).tolist()
    input_shape = (1, 1, in_height, in_width)
    inputs = torch.randn(*input_shape)
    # Flatten inputs in column-first order
    inputs_list = inputs.permute(3, 2, 1, 0).contiguous().view(-1).tolist()
    # Compute golden_out
    golden_out = conv_layer(inputs).permute(3, 2, 1, 0).contiguous().view(-1).tolist()
    
    return inputs, weights, biases, golden_out

def RunSingleBatch(d, kHandle, opt, inputs_list, weights, biases):
    opt.DATA_SIZE = max(len(inputs_list), len(weights) + len(biases))
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

    boHandle1.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, opt.DATA_SIZE * 4 , 0)
    boHandle3.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, opt.DATA_SIZE * 4, 0)
    boHandle4.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, opt.DATA_SIZE * 4, 0)

    print("Start the kernel")
    run = kHandle(boHandle1, boHandle2, boHandle3, boHandle4, opt.DATA_SIZE)
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
    

def runKernel(opt):
    torch.manual_seed(0)
    t_config = parse_params_header("/mnt/shared/home/tz32/scalehls_vitis_test/src/params.hpp")
    # Define the convolutional layer using torch
     
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
    rule = re.compile("hls4ml_conv2d*")
    kernel = list(filter(lambda val: rule.match(val.get_name()), kernellist))[0]
    kHandle = pyxrt.kernel(d, uuid, kernel.get_name(), pyxrt.kernel.shared)


    in_height = 124
    in_width = 124
    filt_height = 5
    filt_width = 5
    out_height = in_height - filt_height + 1
    out_width = in_width - filt_width + 1
    increment_h = 60
    increment_w = 60
    step_size_h = increment_h + filt_height - 1
    step_size_w = increment_w + filt_width - 1
    
    inputs, weights, biases, golden_out = GenMatrix(in_height, in_width)
    inputs_list = inputs.permute(3, 2, 1, 0).contiguous().view(-1).tolist()
    output_list = [0 for i in range(out_height * out_width)]
    
    
    # output_list = RunSingleBatch(d, kHandle, opt, inputs_list, weights, biases)

    for i in range(0, in_height - filt_height + 1, increment_h):
        for j in range(0, in_width - filt_width + 1, increment_w):
            # Extract the submatrix for the current batch
            batch_input = []
            for jj in range(j, j+step_size_w):
                for ii in range(i, i+step_size_h):     
                    batch_input.append(inputs_list[ii+jj*in_width])
            
            # Run the kernel for this batch
            batch_output_floats = RunSingleBatch(d, kHandle, opt, batch_input, weights, biases)
            
            # Store the output in the correct position in the output_list
            for jj in range(j, j+increment_w):
                for ii in range(i, i+increment_h):     
                    output_list[ii+jj*out_width] = batch_output_floats[ii-i+(jj-j)*increment_h]
    
    print("====================")                  
    for i in range(10):
        print("Output Num ", i, "= ", output_list[i], "Golden = ", golden_out[i])
    print("====================") 


    # Validate the output
    tolerance = 1e-5  # Define the tolerance for floating-point comparison
    count = 0
    for i in range(len(golden_out)): 
        if abs(output_list[i] - golden_out[i]) > tolerance:
            print("[Assertion Failed] Computed value does not match the reference.")
            print("Output Num ", i, "= ", output_list[i], "Golden = ", golden_out[i])
            count += 1
        if i == len(golden_out) - 1:
            print("[Assertion Passed]")
        if count == 10:
            break
            
    print("====================")      

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


    # for i in range(0, in_height - filt_height + 1, increment_h):
    #     for j in range(0, in_width - filt_width + 1, increment_w):
    #         # Extract the submatrix for the current batch
    #         start_idx = i * in_width + j
    #         end_idx = start_idx + step_size_h * step_size_w
    #         batch_input = inputs_list[start_idx:end_idx]
            
    #         # Run the kernel for this batch
    #         batch_output_floats = RunSingleBatch(d, kHandle, opt, batch_input, weights, biases)
            
    #         # Store the output in the correct position in the output_list
    #         start_out_idx = i * out_width + j
    #         end_out_idx = start_out_idx + increment_h * increment_w
    #         output_list[start_out_idx:end_out_idx] = batch_output_floats[:increment_h * increment_w]