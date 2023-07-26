source /opt/xilinx/vitis/v2022p2/Vitis/2022.2/settings64.sh
source /opt/xilinx/xrt/setup.sh
export PLATFORM_REPO_PATHS=/opt/xilinx/platforms
export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LIBRARY_PATH
export PYTHONPATH=/mnt/shared/home/tz32/.local/lib/python3.6/site-packages:$PYTHONPATH

============================================

vitis_hls run_hls.tcl

============================================
make all TARGET=hw PLATFORM=/opt/xilinx/platforms/xilinx_u280_gen3x16_xdma_1_202211_1/xilinx_u280_gen3x16_xdma_1_202211_1.xpfm


./src/host.py -k build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/vadd.xclbin

sbatch -p u280-run ./src/host.py -k build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/vadd.xclbin

============================================

sbatch -p u280-run ./src/host.py -k /mnt/shared/home/tz32/Vitis_Accel_Examples/host_py/hello_world_py/build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/vadd.xclbin

============================================
srun -p u280-run -n 1 --pty bash -i

src/host.py -k /mnt/shared/home/tz32/Vitis_Accel_Examples/host_py/hello_world_py/build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/vadd.xclbin

============================================
srun -p u280-run -n 1 --pty bash -i

src/host.py -k /mnt/shared/home/tz32/scalehls_vitis_test/build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/forward.xclbin

src/host.py -k /mnt/shared/home/tz32/scalehls_vitis_test/build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced.xclbin

src/host_compare.py -k /mnt/shared/home/tz32/scalehls_vitis_test/build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/forward.xclbin -k /mnt/shared/home/tz32/scalehls_vitis_test/build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced_v2.xclbin

src/host_func.py -k /mnt/shared/home/tz32/scalehls_vitis_test/build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/largeNet_2_copy.xclbin

src/host_func.py -k /mnt/shared/home/tz32/scalehls_vitis_test/build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/largeNet_4.xclbin

exit