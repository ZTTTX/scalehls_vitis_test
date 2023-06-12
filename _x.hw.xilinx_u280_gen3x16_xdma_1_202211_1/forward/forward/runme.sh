#!/bin/sh

# 
# v++(TM)
# runme.sh: a v++-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/xilinx/vitis/v2022p2/Vitis_HLS/2022.2/bin:/opt/xilinx/vitis/v2022p2/Vitis/2022.2/bin:/opt/xilinx/vitis/v2022p2/Vitis/2022.2/bin
else
  PATH=/opt/xilinx/vitis/v2022p2/Vitis_HLS/2022.2/bin:/opt/xilinx/vitis/v2022p2/Vitis/2022.2/bin:/opt/xilinx/vitis/v2022p2/Vitis/2022.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/forward/forward'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vitis_hls -f forward.tcl -messageDb vitis_hls.pb
