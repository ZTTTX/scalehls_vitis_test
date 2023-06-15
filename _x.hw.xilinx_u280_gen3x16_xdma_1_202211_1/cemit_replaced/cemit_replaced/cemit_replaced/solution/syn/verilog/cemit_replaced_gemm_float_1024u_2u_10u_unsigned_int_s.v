// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cemit_replaced_gemm_float_1024u_2u_10u_unsigned_int_s (
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
        l_strC9_dout,
        l_strC9_empty_n,
        l_strC9_read,
        l_strSum10_din,
        l_strSum10_full_n,
        l_strSum10_write,
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
input  [63:0] l_strC9_dout;
input   l_strC9_empty_n;
output   l_strC9_read;
output  [63:0] l_strSum10_din;
input   l_strSum10_full_n;
output   l_strSum10_write;
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
wire    gemm_U0_ap_start;
wire    gemm_U0_start_out;
wire    gemm_U0_start_write;
wire    gemm_U0_l_strA7_read;
wire    gemm_U0_l_strB8_read;
wire   [63:0] gemm_U0_l_sum3_din;
wire    gemm_U0_l_sum3_write;
wire    gemm_U0_ap_done;
wire    gemm_U0_ap_ready;
wire    gemm_U0_ap_idle;
wire    gemm_U0_ap_continue;
wire    gemmBufferC_float_2u_2u_10u_U0_ap_start;
wire    gemmBufferC_float_2u_2u_10u_U0_ap_done;
wire    gemmBufferC_float_2u_2u_10u_U0_ap_continue;
wire    gemmBufferC_float_2u_2u_10u_U0_ap_idle;
wire    gemmBufferC_float_2u_2u_10u_U0_ap_ready;
wire    gemmBufferC_float_2u_2u_10u_U0_l_sum3_read;
wire   [63:0] gemmBufferC_float_2u_2u_10u_U0_l_mat4_din;
wire    gemmBufferC_float_2u_2u_10u_U0_l_mat4_write;
wire    scal_float_2u_unsigned_int_U0_ap_start;
wire    scal_float_2u_unsigned_int_U0_ap_done;
wire    scal_float_2u_unsigned_int_U0_ap_continue;
wire    scal_float_2u_unsigned_int_U0_ap_idle;
wire    scal_float_2u_unsigned_int_U0_ap_ready;
wire    scal_float_2u_unsigned_int_U0_l_strC9_read;
wire   [63:0] scal_float_2u_unsigned_int_U0_l_betaC5_din;
wire    scal_float_2u_unsigned_int_U0_l_betaC5_write;
wire    scal_float_2u_unsigned_int_U0_start_out;
wire    scal_float_2u_unsigned_int_U0_start_write;
wire    axpy_float_2u_unsigned_int_U0_ap_start;
wire    axpy_float_2u_unsigned_int_U0_ap_done;
wire    axpy_float_2u_unsigned_int_U0_ap_continue;
wire    axpy_float_2u_unsigned_int_U0_ap_idle;
wire    axpy_float_2u_unsigned_int_U0_ap_ready;
wire    axpy_float_2u_unsigned_int_U0_l_mat4_read;
wire    axpy_float_2u_unsigned_int_U0_l_betaC5_read;
wire   [63:0] axpy_float_2u_unsigned_int_U0_l_strSum10_din;
wire    axpy_float_2u_unsigned_int_U0_l_strSum10_write;
wire    l_sum_full_n;
wire   [63:0] l_sum_dout;
wire   [1:0] l_sum_num_data_valid;
wire   [1:0] l_sum_fifo_cap;
wire    l_sum_empty_n;
wire    l_mat_full_n;
wire   [63:0] l_mat_dout;
wire   [1:0] l_mat_num_data_valid;
wire   [1:0] l_mat_fifo_cap;
wire    l_mat_empty_n;
wire    l_betaC_full_n;
wire   [63:0] l_betaC_dout;
wire   [1:0] l_betaC_num_data_valid;
wire   [1:0] l_betaC_fifo_cap;
wire    l_betaC_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_gemm_U0_ap_ready;
wire    ap_sync_gemm_U0_ap_ready;
reg    ap_sync_reg_scal_float_2u_unsigned_int_U0_ap_ready;
wire    ap_sync_scal_float_2u_unsigned_int_U0_ap_ready;
wire   [0:0] start_for_gemmBufferC_float_2u_2u_10u_U0_din;
wire    start_for_gemmBufferC_float_2u_2u_10u_U0_full_n;
wire   [0:0] start_for_gemmBufferC_float_2u_2u_10u_U0_dout;
wire    start_for_gemmBufferC_float_2u_2u_10u_U0_empty_n;
wire   [0:0] start_for_axpy_float_2u_unsigned_int_U0_din;
wire    start_for_axpy_float_2u_unsigned_int_U0_full_n;
wire   [0:0] start_for_axpy_float_2u_unsigned_int_U0_dout;
wire    start_for_axpy_float_2u_unsigned_int_U0_empty_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_sync_reg_gemm_U0_ap_ready = 1'b0;
#0 ap_sync_reg_scal_float_2u_unsigned_int_U0_ap_ready = 1'b0;
end

cemit_replaced_gemm gemm_U0(
    .ap_start(gemm_U0_ap_start),
    .start_full_n(start_for_gemmBufferC_float_2u_2u_10u_U0_full_n),
    .start_out(gemm_U0_start_out),
    .start_write(gemm_U0_start_write),
    .l_strA7_dout(l_strA7_dout),
    .l_strA7_empty_n(l_strA7_empty_n),
    .l_strA7_read(gemm_U0_l_strA7_read),
    .l_strB8_dout(l_strB8_dout),
    .l_strB8_empty_n(l_strB8_empty_n),
    .l_strB8_read(gemm_U0_l_strB8_read),
    .l_sum3_din(gemm_U0_l_sum3_din),
    .l_sum3_full_n(l_sum_full_n),
    .l_sum3_write(gemm_U0_l_sum3_write),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_done(gemm_U0_ap_done),
    .ap_ready(gemm_U0_ap_ready),
    .ap_idle(gemm_U0_ap_idle),
    .ap_continue(gemm_U0_ap_continue)
);

cemit_replaced_gemmBufferC_float_2u_2u_10u_s gemmBufferC_float_2u_2u_10u_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(gemmBufferC_float_2u_2u_10u_U0_ap_start),
    .ap_done(gemmBufferC_float_2u_2u_10u_U0_ap_done),
    .ap_continue(gemmBufferC_float_2u_2u_10u_U0_ap_continue),
    .ap_idle(gemmBufferC_float_2u_2u_10u_U0_ap_idle),
    .ap_ready(gemmBufferC_float_2u_2u_10u_U0_ap_ready),
    .l_sum3_dout(l_sum_dout),
    .l_sum3_num_data_valid(l_sum_num_data_valid),
    .l_sum3_fifo_cap(l_sum_fifo_cap),
    .l_sum3_empty_n(l_sum_empty_n),
    .l_sum3_read(gemmBufferC_float_2u_2u_10u_U0_l_sum3_read),
    .l_mat4_din(gemmBufferC_float_2u_2u_10u_U0_l_mat4_din),
    .l_mat4_num_data_valid(l_mat_num_data_valid),
    .l_mat4_fifo_cap(l_mat_fifo_cap),
    .l_mat4_full_n(l_mat_full_n),
    .l_mat4_write(gemmBufferC_float_2u_2u_10u_U0_l_mat4_write)
);

cemit_replaced_scal_float_2u_unsigned_int_s scal_float_2u_unsigned_int_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(scal_float_2u_unsigned_int_U0_ap_start),
    .start_full_n(start_for_axpy_float_2u_unsigned_int_U0_full_n),
    .ap_done(scal_float_2u_unsigned_int_U0_ap_done),
    .ap_continue(scal_float_2u_unsigned_int_U0_ap_continue),
    .ap_idle(scal_float_2u_unsigned_int_U0_ap_idle),
    .ap_ready(scal_float_2u_unsigned_int_U0_ap_ready),
    .l_strC9_dout(l_strC9_dout),
    .l_strC9_num_data_valid(2'd0),
    .l_strC9_fifo_cap(2'd0),
    .l_strC9_empty_n(l_strC9_empty_n),
    .l_strC9_read(scal_float_2u_unsigned_int_U0_l_strC9_read),
    .l_betaC5_din(scal_float_2u_unsigned_int_U0_l_betaC5_din),
    .l_betaC5_num_data_valid(l_betaC_num_data_valid),
    .l_betaC5_fifo_cap(l_betaC_fifo_cap),
    .l_betaC5_full_n(l_betaC_full_n),
    .l_betaC5_write(scal_float_2u_unsigned_int_U0_l_betaC5_write),
    .start_out(scal_float_2u_unsigned_int_U0_start_out),
    .start_write(scal_float_2u_unsigned_int_U0_start_write)
);

cemit_replaced_axpy_float_2u_unsigned_int_s axpy_float_2u_unsigned_int_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(axpy_float_2u_unsigned_int_U0_ap_start),
    .ap_done(axpy_float_2u_unsigned_int_U0_ap_done),
    .ap_continue(axpy_float_2u_unsigned_int_U0_ap_continue),
    .ap_idle(axpy_float_2u_unsigned_int_U0_ap_idle),
    .ap_ready(axpy_float_2u_unsigned_int_U0_ap_ready),
    .l_mat4_dout(l_mat_dout),
    .l_mat4_num_data_valid(l_mat_num_data_valid),
    .l_mat4_fifo_cap(l_mat_fifo_cap),
    .l_mat4_empty_n(l_mat_empty_n),
    .l_mat4_read(axpy_float_2u_unsigned_int_U0_l_mat4_read),
    .l_betaC5_dout(l_betaC_dout),
    .l_betaC5_num_data_valid(l_betaC_num_data_valid),
    .l_betaC5_fifo_cap(l_betaC_fifo_cap),
    .l_betaC5_empty_n(l_betaC_empty_n),
    .l_betaC5_read(axpy_float_2u_unsigned_int_U0_l_betaC5_read),
    .l_strSum10_din(axpy_float_2u_unsigned_int_U0_l_strSum10_din),
    .l_strSum10_num_data_valid(2'd0),
    .l_strSum10_fifo_cap(2'd0),
    .l_strSum10_full_n(l_strSum10_full_n),
    .l_strSum10_write(axpy_float_2u_unsigned_int_U0_l_strSum10_write)
);

cemit_replaced_fifo_w64_d2_S_x1 l_sum_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(gemm_U0_l_sum3_din),
    .if_full_n(l_sum_full_n),
    .if_write(gemm_U0_l_sum3_write),
    .if_dout(l_sum_dout),
    .if_num_data_valid(l_sum_num_data_valid),
    .if_fifo_cap(l_sum_fifo_cap),
    .if_empty_n(l_sum_empty_n),
    .if_read(gemmBufferC_float_2u_2u_10u_U0_l_sum3_read)
);

cemit_replaced_fifo_w64_d2_S_x1 l_mat_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(gemmBufferC_float_2u_2u_10u_U0_l_mat4_din),
    .if_full_n(l_mat_full_n),
    .if_write(gemmBufferC_float_2u_2u_10u_U0_l_mat4_write),
    .if_dout(l_mat_dout),
    .if_num_data_valid(l_mat_num_data_valid),
    .if_fifo_cap(l_mat_fifo_cap),
    .if_empty_n(l_mat_empty_n),
    .if_read(axpy_float_2u_unsigned_int_U0_l_mat4_read)
);

cemit_replaced_fifo_w64_d2_S_x1 l_betaC_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(scal_float_2u_unsigned_int_U0_l_betaC5_din),
    .if_full_n(l_betaC_full_n),
    .if_write(scal_float_2u_unsigned_int_U0_l_betaC5_write),
    .if_dout(l_betaC_dout),
    .if_num_data_valid(l_betaC_num_data_valid),
    .if_fifo_cap(l_betaC_fifo_cap),
    .if_empty_n(l_betaC_empty_n),
    .if_read(axpy_float_2u_unsigned_int_U0_l_betaC5_read)
);

cemit_replaced_start_for_gemmBufferC_float_2u_2u_10u_U0 start_for_gemmBufferC_float_2u_2u_10u_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_gemmBufferC_float_2u_2u_10u_U0_din),
    .if_full_n(start_for_gemmBufferC_float_2u_2u_10u_U0_full_n),
    .if_write(gemm_U0_start_write),
    .if_dout(start_for_gemmBufferC_float_2u_2u_10u_U0_dout),
    .if_empty_n(start_for_gemmBufferC_float_2u_2u_10u_U0_empty_n),
    .if_read(gemmBufferC_float_2u_2u_10u_U0_ap_ready)
);

cemit_replaced_start_for_axpy_float_2u_unsigned_int_U0 start_for_axpy_float_2u_unsigned_int_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_axpy_float_2u_unsigned_int_U0_din),
    .if_full_n(start_for_axpy_float_2u_unsigned_int_U0_full_n),
    .if_write(scal_float_2u_unsigned_int_U0_start_write),
    .if_dout(start_for_axpy_float_2u_unsigned_int_U0_dout),
    .if_empty_n(start_for_axpy_float_2u_unsigned_int_U0_empty_n),
    .if_read(axpy_float_2u_unsigned_int_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_gemm_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_gemm_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_gemm_U0_ap_ready <= ap_sync_gemm_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_scal_float_2u_unsigned_int_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_scal_float_2u_unsigned_int_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_scal_float_2u_unsigned_int_U0_ap_ready <= ap_sync_scal_float_2u_unsigned_int_U0_ap_ready;
        end
    end
end

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

assign ap_done = axpy_float_2u_unsigned_int_U0_ap_done;

assign ap_idle = (scal_float_2u_unsigned_int_U0_ap_idle & gemm_U0_ap_idle & gemmBufferC_float_2u_2u_10u_U0_ap_idle & axpy_float_2u_unsigned_int_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_gemm_U0_ap_ready = (gemm_U0_ap_ready | ap_sync_reg_gemm_U0_ap_ready);

assign ap_sync_ready = (ap_sync_scal_float_2u_unsigned_int_U0_ap_ready & ap_sync_gemm_U0_ap_ready);

assign ap_sync_scal_float_2u_unsigned_int_U0_ap_ready = (scal_float_2u_unsigned_int_U0_ap_ready | ap_sync_reg_scal_float_2u_unsigned_int_U0_ap_ready);

assign axpy_float_2u_unsigned_int_U0_ap_continue = ap_continue;

assign axpy_float_2u_unsigned_int_U0_ap_start = start_for_axpy_float_2u_unsigned_int_U0_empty_n;

assign gemmBufferC_float_2u_2u_10u_U0_ap_continue = 1'b1;

assign gemmBufferC_float_2u_2u_10u_U0_ap_start = start_for_gemmBufferC_float_2u_2u_10u_U0_empty_n;

assign gemm_U0_ap_continue = 1'b1;

assign gemm_U0_ap_start = (real_start & (ap_sync_reg_gemm_U0_ap_ready ^ 1'b1));

assign internal_ap_ready = ap_sync_ready;

assign l_strA7_read = gemm_U0_l_strA7_read;

assign l_strB8_read = gemm_U0_l_strB8_read;

assign l_strC9_read = scal_float_2u_unsigned_int_U0_l_strC9_read;

assign l_strSum10_din = axpy_float_2u_unsigned_int_U0_l_strSum10_din;

assign l_strSum10_write = axpy_float_2u_unsigned_int_U0_l_strSum10_write;

assign scal_float_2u_unsigned_int_U0_ap_continue = 1'b1;

assign scal_float_2u_unsigned_int_U0_ap_start = (real_start & (ap_sync_reg_scal_float_2u_unsigned_int_U0_ap_ready ^ 1'b1));

assign start_for_axpy_float_2u_unsigned_int_U0_din = 1'b1;

assign start_for_gemmBufferC_float_2u_2u_10u_U0_din = 1'b1;

assign start_out = real_start;

endmodule //cemit_replaced_gemm_float_1024u_2u_10u_unsigned_int_s
