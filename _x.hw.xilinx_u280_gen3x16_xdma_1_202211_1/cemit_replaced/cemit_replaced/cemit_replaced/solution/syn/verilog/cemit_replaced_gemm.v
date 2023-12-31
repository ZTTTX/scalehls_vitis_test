// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cemit_replaced_gemm (
        ap_start,
        start_full_n,
        start_out,
        start_write,
        l_strA7_dout,
        l_strA7_empty_n,
        l_strA7_read,
        l_strB8_dout,
        l_strB8_empty_n,
        l_strB8_read,
        l_sum3_din,
        l_sum3_full_n,
        l_sum3_write,
        ap_clk,
        ap_rst,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input   ap_start;
input   start_full_n;
output   start_out;
output   start_write;
input  [63:0] l_strA7_dout;
input   l_strA7_empty_n;
output   l_strA7_read;
input  [63:0] l_strB8_dout;
input   l_strB8_empty_n;
output   l_strB8_read;
output  [63:0] l_sum3_din;
input   l_sum3_full_n;
output   l_sum3_write;
input   ap_clk;
input   ap_rst;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

reg start_write;

reg    real_start;
reg    start_once_reg;
wire    internal_ap_ready;
wire    process_U0_l_strA7_read;
wire    process_U0_l_strB8_read;
wire   [63:0] process_U0_l_sum3_din;
wire    process_U0_l_sum3_write;
wire    process_U0_ap_start;
wire    process_U0_ap_done;
wire    process_U0_ap_ready;
wire    process_U0_ap_idle;
wire    process_U0_ap_continue;
wire    ap_sync_ready;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
end

cemit_replaced_process_r process_U0(
    .l_strA7_dout(l_strA7_dout),
    .l_strA7_empty_n(l_strA7_empty_n),
    .l_strA7_read(process_U0_l_strA7_read),
    .l_strB8_dout(l_strB8_dout),
    .l_strB8_empty_n(l_strB8_empty_n),
    .l_strB8_read(process_U0_l_strB8_read),
    .l_sum3_din(process_U0_l_sum3_din),
    .l_sum3_full_n(l_sum3_full_n),
    .l_sum3_write(process_U0_l_sum3_write),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(process_U0_ap_start),
    .ap_done(process_U0_ap_done),
    .ap_ready(process_U0_ap_ready),
    .ap_idle(process_U0_ap_idle),
    .ap_continue(process_U0_ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

assign ap_done = process_U0_ap_done;

assign ap_idle = process_U0_ap_idle;

assign ap_ready = process_U0_ap_ready;

assign ap_sync_ready = process_U0_ap_ready;

assign internal_ap_ready = ap_sync_ready;

assign l_strA7_read = process_U0_l_strA7_read;

assign l_strB8_read = process_U0_l_strB8_read;

assign l_sum3_din = process_U0_l_sum3_din;

assign l_sum3_write = process_U0_l_sum3_write;

assign process_U0_ap_continue = ap_continue;

assign process_U0_ap_start = real_start;

assign start_out = real_start;

endmodule //cemit_replaced_gemm
