// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cemit_replaced_gemmBufferC_float_2u_2u_10u_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        l_sum3_dout,
        l_sum3_num_data_valid,
        l_sum3_fifo_cap,
        l_sum3_empty_n,
        l_sum3_read,
        l_mat4_din,
        l_mat4_num_data_valid,
        l_mat4_fifo_cap,
        l_mat4_full_n,
        l_mat4_write
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] l_sum3_dout;
input  [1:0] l_sum3_num_data_valid;
input  [1:0] l_sum3_fifo_cap;
input   l_sum3_empty_n;
output   l_sum3_read;
output  [63:0] l_mat4_din;
input  [1:0] l_mat4_num_data_valid;
input  [1:0] l_mat4_fifo_cap;
input   l_mat4_full_n;
output   l_mat4_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg l_sum3_read;
reg l_mat4_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [2:0] l_bufferC_address0;
reg    l_bufferC_ce0;
reg    l_bufferC_we0;
wire   [31:0] l_bufferC_q0;
reg   [2:0] l_bufferC_1_address0;
reg    l_bufferC_1_ce0;
reg    l_bufferC_1_we0;
wire   [31:0] l_bufferC_1_q0;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_start;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_done;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_idle;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_ready;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_sum3_read;
wire   [2:0] grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_1_address0;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_1_ce0;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_1_we0;
wire   [31:0] grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_1_d0;
wire   [2:0] grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_address0;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_ce0;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_we0;
wire   [31:0] grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_d0;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_start;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_done;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_idle;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_ready;
wire   [63:0] grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_mat4_din;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_mat4_write;
wire   [2:0] grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_bufferC_address0;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_bufferC_ce0;
wire   [2:0] grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_bufferC_1_address0;
wire    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_bufferC_1_ce0;
reg    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_start_reg;
reg    ap_block_state1_ignore_call5;
wire    ap_CS_fsm_state2;
reg    grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg   [4:0] ap_NS_fsm;
reg    ap_block_state1;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_start_reg = 1'b0;
#0 grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_start_reg = 1'b0;
end

cemit_replaced_gemmBufferC_float_2u_2u_10u_s_l_bufferC_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 5 ),
    .AddressWidth( 3 ))
l_bufferC_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(l_bufferC_address0),
    .ce0(l_bufferC_ce0),
    .we0(l_bufferC_we0),
    .d0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_d0),
    .q0(l_bufferC_q0)
);

cemit_replaced_gemmBufferC_float_2u_2u_10u_s_l_bufferC_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 5 ),
    .AddressWidth( 3 ))
l_bufferC_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(l_bufferC_1_address0),
    .ce0(l_bufferC_1_ce0),
    .we0(l_bufferC_1_we0),
    .d0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_1_d0),
    .q0(l_bufferC_1_q0)
);

cemit_replaced_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2 grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_start),
    .ap_done(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_done),
    .ap_idle(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_idle),
    .ap_ready(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_ready),
    .l_sum3_dout(l_sum3_dout),
    .l_sum3_num_data_valid(2'd0),
    .l_sum3_fifo_cap(2'd0),
    .l_sum3_empty_n(l_sum3_empty_n),
    .l_sum3_read(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_sum3_read),
    .l_bufferC_1_address0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_1_address0),
    .l_bufferC_1_ce0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_1_ce0),
    .l_bufferC_1_we0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_1_we0),
    .l_bufferC_1_d0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_1_d0),
    .l_bufferC_address0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_address0),
    .l_bufferC_ce0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_ce0),
    .l_bufferC_we0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_we0),
    .l_bufferC_d0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_d0)
);

cemit_replaced_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8 grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_start),
    .ap_done(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_done),
    .ap_idle(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_idle),
    .ap_ready(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_ready),
    .l_mat4_din(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_mat4_din),
    .l_mat4_num_data_valid(2'd0),
    .l_mat4_fifo_cap(2'd0),
    .l_mat4_full_n(l_mat4_full_n),
    .l_mat4_write(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_mat4_write),
    .l_bufferC_address0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_bufferC_address0),
    .l_bufferC_ce0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_bufferC_ce0),
    .l_bufferC_q0(l_bufferC_q0),
    .l_bufferC_1_address0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_bufferC_1_address0),
    .l_bufferC_1_ce0(grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_bufferC_1_ce0),
    .l_bufferC_1_q0(l_bufferC_1_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_start_reg <= 1'b1;
        end else if ((grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_ready == 1'b1)) begin
            grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_start_reg <= 1'b0;
    end else begin
        if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_start_reg <= 1'b1;
        end else if ((grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_ready == 1'b1)) begin
            grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

always @ (*) begin
    if (((grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        l_bufferC_1_address0 = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_bufferC_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        l_bufferC_1_address0 = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_1_address0;
    end else begin
        l_bufferC_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        l_bufferC_1_ce0 = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_bufferC_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        l_bufferC_1_ce0 = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_1_ce0;
    end else begin
        l_bufferC_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        l_bufferC_1_we0 = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_1_we0;
    end else begin
        l_bufferC_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        l_bufferC_address0 = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_bufferC_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        l_bufferC_address0 = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_address0;
    end else begin
        l_bufferC_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        l_bufferC_ce0 = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_bufferC_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        l_bufferC_ce0 = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_ce0;
    end else begin
        l_bufferC_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        l_bufferC_we0 = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_bufferC_we0;
    end else begin
        l_bufferC_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        l_mat4_write = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_mat4_write;
    end else begin
        l_mat4_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        l_sum3_read = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_l_sum3_read;
    end else begin
        l_sum3_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state1_ignore_call5 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_start = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_ap_start_reg;

assign grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_start = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30_ap_start_reg;

assign l_mat4_din = grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40_l_mat4_din;

endmodule //cemit_replaced_gemmBufferC_float_2u_2u_10u_s
