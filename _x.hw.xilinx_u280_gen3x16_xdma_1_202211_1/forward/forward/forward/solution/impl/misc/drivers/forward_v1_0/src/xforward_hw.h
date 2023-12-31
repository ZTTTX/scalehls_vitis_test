// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// ctrl
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of v25
//        bit 31~0 - v25[31:0] (Read/Write)
// 0x14 : Data signal of v25
//        bit 31~0 - v25[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of v26
//        bit 31~0 - v26[31:0] (Read/Write)
// 0x20 : Data signal of v26
//        bit 31~0 - v26[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of v27
//        bit 31~0 - v27[31:0] (Read/Write)
// 0x2c : Data signal of v27
//        bit 31~0 - v27[63:32] (Read/Write)
// 0x30 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFORWARD_CTRL_ADDR_AP_CTRL  0x00
#define XFORWARD_CTRL_ADDR_GIE      0x04
#define XFORWARD_CTRL_ADDR_IER      0x08
#define XFORWARD_CTRL_ADDR_ISR      0x0c
#define XFORWARD_CTRL_ADDR_V25_DATA 0x10
#define XFORWARD_CTRL_BITS_V25_DATA 64
#define XFORWARD_CTRL_ADDR_V26_DATA 0x1c
#define XFORWARD_CTRL_BITS_V26_DATA 64
#define XFORWARD_CTRL_ADDR_V27_DATA 0x28
#define XFORWARD_CTRL_BITS_V27_DATA 64

