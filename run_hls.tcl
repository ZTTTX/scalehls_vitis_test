#
# Copyright 2019 Xilinx, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#set FUN_NAME "cemit_replaced_v2"
#set FUN_NAME "forward"
#set FUN_NAME "largeNet_2_copy"

set FUN_NAME "largeNet_3_df"

set CUR_DIR "/mnt/shared/home/tz32/scalehls_vitis_test"
set PROJ "$FUN_NAME.prj"
set SOLN "sol"

if {![info exists CLKP]} {
  set CLKP 3.3333
}

open_project -reset $PROJ

add_files "src/$FUN_NAME.cpp" -cflags "-std=c++14 -Isrc/Vitis_Libraries/blas/L1/include/hw -Isrc/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils -Isrc/Vitis_Libraries/blas/L1/tests/hw/gemm"
add_files -tb "src/test.cpp" -cflags "-std=c++14 -Isrc/Vitis_Libraries/blas/L1/include/hw"
set_top $FUN_NAME
open_solution -reset $SOLN




set_part xcu250-figd2104-2L-e
create_clock -period $CLKP

csim_design

if {0==1} {
  csynth_design
  export_design -flow impl -rtl verilog
}

exit