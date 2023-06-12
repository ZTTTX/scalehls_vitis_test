#
# Copyright 2019-2021 Xilinx, Inc.
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
# makefile-generator v1.0.3
#

############################## Help Section ##############################
ifneq ($(findstring Makefile, $(MAKEFILE_LIST)), Makefile)
help:
	$(ECHO) "Makefile Usage:"
	$(ECHO) "  make all TARGET=<sw_emu/hw_emu/hw> PLATFORM=<FPGA platform>"
	$(ECHO) "      Command to generate the design for specified Target and Shell."
	$(ECHO) ""
	$(ECHO) "  make run TARGET=<sw_emu/hw_emu/hw> PLATFORM=<FPGA platform>"
	$(ECHO) "      Command to run application in emulation."
	$(ECHO) ""
	$(ECHO) "  make build TARGET=<sw_emu/hw_emu/hw> PLATFORM=<FPGA platform>"
	$(ECHO) "      Command to build xclbin application."
	$(ECHO) ""
	$(ECHO) "  make clean "
	$(ECHO) "      Command to remove the generated non-hardware files."
	$(ECHO) ""
	$(ECHO) "  make cleanall"
	$(ECHO) "      Command to remove all the generated files."
	$(ECHO) ""

endif

############################## Setting up Project Variables ##############################
TOP_FUNC_NAME ?= cemit_replaced
TARGET := hw
VPP_LDFLAGS :=
include ./utils.mk

TEMP_DIR := ./_x.$(TARGET).$(XSA)
BUILD_DIR := ./build_dir.$(TARGET).$(XSA)

LINK_OUTPUT := $(BUILD_DIR)/$(TOP_FUNC_NAME).link.xclbin
PACKAGE_OUT = ./package.$(TARGET)


VPP_PFLAGS := 
CMD_ARGS = -k $(BUILD_DIR)/$(TOP_FUNC_NAME).xclbin
CXXFLAGS += -I$(XILINX_XRT)/include -I$(XILINX_VIVADO)/include -Wall -O0 -g -std=c++1y
LDFLAGS += -L$(XILINX_XRT)/lib -pthread -lOpenCL
#My Adds
CXXFLAGS += -I/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw \
			-I/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas

########################## Checking if PLATFORM in allowlist #######################
PLATFORM_BLOCKLIST += nodma zc vck v70 
############################## Setting up Host Variables ##############################
#Include Required Host Source Files
HOST_SRCS += ./src/host.py 
# Host compiler global settings
CXXFLAGS += -fmessage-length=0
LDFLAGS += -lrt -lstdc++ 

############################## Setting up Kernel Variables ##############################
# Kernel compiler global settings
VPP_FLAGS += --save-temps 

PYTHON_INSTALL ?= /usr/bin
EXECUTABLE = ./src/host.py
EMCONFIG_DIR = $(TEMP_DIR)

############################## Setting Targets ##############################
.PHONY: all clean cleanall docs emconfig
all: check-platform check-device check-vitis $(EXECUTABLE) $(BUILD_DIR)/$(TOP_FUNC_NAME).xclbin emconfig

.PHONY: build
build: check-vitis check-device $(BUILD_DIR)/$(TOP_FUNC_NAME).xclbin

.PHONY: xclbin
xclbin: build

############################## Setting Rules for Binary Containers (Building Kernels) ##############################
$(TEMP_DIR)/$(TOP_FUNC_NAME).xo: src/$(TOP_FUNC_NAME).cpp
	mkdir -p $(TEMP_DIR)
	v++ -c $(VPP_FLAGS) -t $(TARGET) --platform $(PLATFORM) -k $(TOP_FUNC_NAME) --temp_dir $(TEMP_DIR)  -I'$(<D)' -o'$@' '$<' -I/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw

$(BUILD_DIR)/$(TOP_FUNC_NAME).xclbin: $(TEMP_DIR)/$(TOP_FUNC_NAME).xo
	mkdir -p $(BUILD_DIR)
	v++ -l $(VPP_FLAGS) -t $(TARGET) --platform $(PLATFORM) $(VPP_LDFLAGS) --temp_dir $(TEMP_DIR) -o'$(LINK_OUTPUT)' $(+) -I/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw
	v++ -p $(LINK_OUTPUT) $(VPP_FLAGS) -t $(TARGET) --platform $(PLATFORM) --package.out_dir $(PACKAGE_OUT) -o $(BUILD_DIR)/$(TOP_FUNC_NAME).xclbin -I/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw

emconfig:$(EMCONFIG_DIR)/emconfig.json
$(EMCONFIG_DIR)/emconfig.json:
	emconfigutil --platform $(PLATFORM) --od $(EMCONFIG_DIR)

############################## Setting Essential Checks and Running Rules ##############################
run: all
ifeq ($(TARGET),$(filter $(TARGET),sw_emu hw_emu))
	cp -rf $(EMCONFIG_DIR)/emconfig.json .
	XCL_EMULATION_MODE=$(TARGET) ${PYTHON_INSTALL}/python3 $(HOST_SRCS) $(CMD_ARGS)
else
	${PYTHON_INSTALL}/python3 $(HOST_SRCS) $(CMD_ARGS)
endif

.PHONY: test
test:
ifeq ($(TARGET),$(filter $(TARGET),sw_emu hw_emu))
	XCL_EMULATION_MODE=$(TARGET) ${PYTHON_INSTALL}/python3 $(HOST_SRCS) $(CMD_ARGS)
else
	${PYTHON_INSTALL}/python3 $(HOST_SRCS) $(CMD_ARGS)
endif

############################## Cleaning Rules ##############################
# Cleaning stuff
clean:
	-$(RMDIR) .*xclbin/{*sw_emu*,*hw_emu*} 
	-$(RMDIR) profile_* TempConfig system_estimate.xtxt *.rpt *.csv 
	-$(RMDIR) src/*.ll *v++* .Xil emconfig.json dltmp* xmltmp* *.log *.jou *.wcfg *.wdb

cleanall: clean
	-$(RMDIR) build_dir*
	-$(RMDIR) package.*
	-$(RMDIR) _x* *xclbin.run_summary qemu-memory-_* emulation _vimage pl* start_simulation.sh *.xclbin

