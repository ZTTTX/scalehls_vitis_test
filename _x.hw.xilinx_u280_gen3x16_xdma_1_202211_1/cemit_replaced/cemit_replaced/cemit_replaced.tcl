catch {::common::set_param -quiet hls.xocc.mode csynth};
# 
# HLS run script generated by v++ compiler
# 

open_project cemit_replaced
set_top cemit_replaced
# v++ -g, -D, -I, --advanced.prop kernel.cemit_replaced.kernel_flags
add_files "/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp" -cflags " -I /mnt/shared/home/tz32/scalehls_vitis_test/src -I /mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw"
open_solution -flow_target vitis solution
set_part xcu280-fsvh2892-2L-e
create_clock -period 300.000000MHz -name default
# v++ --advanced.param compiler.hlsDataflowStrictMode
config_dataflow -strict_mode warning
# v++ --advanced.param compiler.deadlockDetection
config_export -deadlock_detection sim
# v++ --advanced.param compiler.axiDeadLockFree
config_interface -m_axi_conservative_mode=1
config_interface -m_axi_addr64
# v++ --hls.max_memory_ports
config_interface -m_axi_auto_max_ports=0
config_export -format xo -ipname cemit_replaced
csynth_design
export_design
close_project
puts "HLS completed successfully"
exit
