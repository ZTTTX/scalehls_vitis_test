// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xforward.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XForward_CfgInitialize(XForward *InstancePtr, XForward_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XForward_Start(XForward *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_AP_CTRL) & 0x80;
    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XForward_IsDone(XForward *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XForward_IsIdle(XForward *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XForward_IsReady(XForward *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XForward_Continue(XForward *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_AP_CTRL) & 0x80;
    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_AP_CTRL, Data | 0x10);
}

void XForward_EnableAutoRestart(XForward *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_AP_CTRL, 0x80);
}

void XForward_DisableAutoRestart(XForward *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_AP_CTRL, 0);
}

void XForward_Set_v25(XForward *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_V25_DATA, (u32)(Data));
    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_V25_DATA + 4, (u32)(Data >> 32));
}

u64 XForward_Get_v25(XForward *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_V25_DATA);
    Data += (u64)XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_V25_DATA + 4) << 32;
    return Data;
}

void XForward_Set_v26(XForward *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_V26_DATA, (u32)(Data));
    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_V26_DATA + 4, (u32)(Data >> 32));
}

u64 XForward_Get_v26(XForward *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_V26_DATA);
    Data += (u64)XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_V26_DATA + 4) << 32;
    return Data;
}

void XForward_Set_v27(XForward *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_V27_DATA, (u32)(Data));
    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_V27_DATA + 4, (u32)(Data >> 32));
}

u64 XForward_Get_v27(XForward *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_V27_DATA);
    Data += (u64)XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_V27_DATA + 4) << 32;
    return Data;
}

void XForward_InterruptGlobalEnable(XForward *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_GIE, 1);
}

void XForward_InterruptGlobalDisable(XForward *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_GIE, 0);
}

void XForward_InterruptEnable(XForward *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_IER);
    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_IER, Register | Mask);
}

void XForward_InterruptDisable(XForward *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_IER);
    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_IER, Register & (~Mask));
}

void XForward_InterruptClear(XForward *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XForward_WriteReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_ISR, Mask);
}

u32 XForward_InterruptGetEnabled(XForward *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_IER);
}

u32 XForward_InterruptGetStatus(XForward *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XForward_ReadReg(InstancePtr->Ctrl_BaseAddress, XFORWARD_CTRL_ADDR_ISR);
}

