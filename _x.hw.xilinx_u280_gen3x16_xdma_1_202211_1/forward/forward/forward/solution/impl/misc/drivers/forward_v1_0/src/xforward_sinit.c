// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xforward.h"

extern XForward_Config XForward_ConfigTable[];

XForward_Config *XForward_LookupConfig(u16 DeviceId) {
	XForward_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFORWARD_NUM_INSTANCES; Index++) {
		if (XForward_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XForward_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XForward_Initialize(XForward *InstancePtr, u16 DeviceId) {
	XForward_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XForward_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XForward_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

