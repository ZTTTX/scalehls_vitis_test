#!/usr/bin/python3

# Copyright (C) 2019-2021 Xilinx, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License"). You may
# not use this file except in compliance with the License. A copy of the
# License is located at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.

import os
import sys
import uuid
import re

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
    input_shape = (1, 1, 32, 32)  # Adjust the shape according to your module's input shape
    inputs = torch.randn(*input_shape)
    inputs_list = inputs.view(-1).tolist()
    
    # Compute the expected output
    golden_out = layers(inputs).view(-1).tolist()
     
    # opt.DATA_SIZE = inputs.size().numel()
    opt.DATA_SIZE = (len(inputs_list) if len(inputs_list) > len(weights) else len(weights))
    try:
        #This is the original code.
        print("Trying original code")
        d = pyxrt.device(opt.index) 
        xbin = pyxrt.xclbin(opt.bitstreamFile)
        uuid = d.load_xclbin(xbin)
    except:
        #This is changed so it will work on cluster.
        print("[Warning] Original code failed, moving to modified version")
        d = pyxrt.device(1) 
        xbin = pyxrt.xclbin(opt.bitstreamFile)
        uuid = d.load_xclbin(xbin)
        print("uuid load successfully")
    
    #Get kernel.
    kernellist = xbin.get_kernels()

    rule = re.compile("cemit_replaced*")
    kernel = list(filter(lambda val: rule.match(val.get_name()), kernellist))[0]
    kHandle= pyxrt.kernel(d, uuid, kernel.get_name(), pyxrt.kernel.shared)

    # zeros = bytearray(struct.pack('f' * opt.DATA_SIZE, *([0.0] * opt.DATA_SIZE)))
    # print("Allocate and initialize buffers")
    # boHandle1 = pyxrt.bo(d, opt.DATA_SIZE, pyxrt.bo.normal, kHandle.group_id(0))
    # boHandle1.write(zeros, 0)
    # bo1 = boHandle1.map()

    # boHandle2 = pyxrt.bo(d, opt.DATA_SIZE, pyxrt.bo.normal, kHandle.group_id(1))
    # boHandle2.write(zeros, 0)
    # bo2 = boHandle2.map()

    # boHandle3 = pyxrt.bo(d, opt.DATA_SIZE, pyxrt.bo.normal, kHandle.group_id(2))
    # boHandle3.write(zeros, 0)
    # bo3 = boHandle3.map()
    # Allocate and initialize buffers
    
    
    boHandle1 = pyxrt.bo(d, opt.DATA_SIZE * 4, pyxrt.bo.normal, kHandle.group_id(0))
    boHandle2 = pyxrt.bo(d, opt.DATA_SIZE * 4, pyxrt.bo.normal, kHandle.group_id(1))
    boHandle3 = pyxrt.bo(d, opt.DATA_SIZE * 4, pyxrt.bo.normal, kHandle.group_id(2))

    bo1 = boHandle1.map()
    bo2 = boHandle2.map()
    bo3 = boHandle3.map()

    # Transfer float values into buffers
    zero_float = struct.pack('f', 0.0)
    for i in range(opt.DATA_SIZE):
        bo1[i * 4: (i + 1) * 4] = zero_float
        bo2[i * 4: (i + 1) * 4] = zero_float
        bo3[i * 4: (i + 1) * 4] = zero_float


    for i in range(opt.DATA_SIZE):
        if (i < len(inputs_list)):
            bo1[i * 4: (i + 1) * 4] = struct.pack('f', inputs_list[i])
        if (i < len(weights)):
            bo3[i * 4: (i + 1) * 4] = struct.pack('f', weights[i])

    boHandle1.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, opt.DATA_SIZE, 0)
    # boHandle2.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, opt.DATA_SIZE, 0)
    boHandle3.sync(pyxrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE, opt.DATA_SIZE, 0)
    
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

    # Compare the output with the golden_out
    for i in range(10):
        print("Output Num ", i, "= ", output_floats[i], "Golden = ", golden_out[i])
        
    
    
def main(args):
    opt = Options()
    Options.getOptions(opt, args)
    try:
        runKernel(opt)
        print("TEST DONE")
        return 0
    except OSError as o:
        print(o)
        print("TEST FAILED with OSError")
        return -o.errno
    except AssertionError as a:
        print(a)
        print("TEST FAILED with AssertrionError")
        return -1
    except Exception as e:
        print(e)
        print("TEST FAILED with Exception")
        return -1

if __name__ == "__main__":
    os.environ["Runtime.xrt_bo"] = "false"
    result = main(sys.argv)
    sys.exit(result)
