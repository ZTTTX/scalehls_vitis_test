# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
# Tool Version Limit: 2019.12
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../src/test.cpp ../../../../src/largeNet_3.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := /opt/xilinx/vitis/v2022p2/Vitis_HLS/2022.2
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /opt/xilinx/vitis/v2022p2/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_TOOL}/clang-3.9/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -I "/usr/include/x86_64-linux-gnu"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E2__
IFLAG += -I../../src/Vitis_Libraries/blas/L1/include/hw -std=c++14 -Wno-unknown-pragmas -I../../src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils -Isrc/Vitis_Libraries/blas/L1/tests/hw/gemm 
IFLAG += -g
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/test.o: ../../../../src/test.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/test.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I../../../../src/Vitis_Libraries/blas/L1/include/hw -std=c++14 -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/test.d

$(ObjDir)/largeNet_3.o: ../../../../src/largeNet_3.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../src/largeNet_3.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I../../../../src/Vitis_Libraries/blas/L1/include/hw -I../../../../src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils -I../../src/Vitis_Libraries/blas/L1/tests/hw/gemm -std=c++14  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/largeNet_3.d
