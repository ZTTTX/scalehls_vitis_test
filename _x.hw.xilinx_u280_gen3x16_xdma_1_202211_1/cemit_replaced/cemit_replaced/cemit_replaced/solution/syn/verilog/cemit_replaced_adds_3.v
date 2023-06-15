// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cemit_replaced_adds_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        l_mul1_dout,
        l_mul1_num_data_valid,
        l_mul1_fifo_cap,
        l_mul1_empty_n,
        l_mul1_read,
        l_sum_1_din,
        l_sum_1_num_data_valid,
        l_sum_1_fifo_cap,
        l_sum_1_full_n,
        l_sum_1_write
);

parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] l_mul1_dout;
input  [1:0] l_mul1_num_data_valid;
input  [1:0] l_mul1_fifo_cap;
input   l_mul1_empty_n;
output   l_mul1_read;
output  [63:0] l_sum_1_din;
input  [1:0] l_sum_1_num_data_valid;
input  [1:0] l_sum_1_fifo_cap;
input   l_sum_1_full_n;
output   l_sum_1_write;

reg ap_idle;
reg l_mul1_read;
reg l_sum_1_write;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
reg   [0:0] icmp_ln193_reg_300;
reg    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_state8_pp0_stage3_iter1;
wire    ap_block_state12_pp0_stage3_iter2;
wire    ap_block_state16_pp0_stage3_iter3;
wire    ap_block_state20_pp0_stage3_iter4;
wire    ap_block_state24_pp0_stage3_iter5;
wire    ap_block_state28_pp0_stage3_iter6;
reg    ap_done_reg;
reg    ap_block_pp0_stage3_subdone;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    l_mul1_blk_n;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage0;
reg    l_sum_1_blk_n;
reg   [0:0] icmp_ln217_reg_420;
reg   [0:0] icmp_ln217_reg_420_pp0_iter6_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_state9_pp0_stage0_iter2;
wire    ap_block_state13_pp0_stage0_iter3;
wire    ap_block_state17_pp0_stage0_iter4;
wire    ap_block_state21_pp0_stage0_iter5;
wire    ap_block_state25_pp0_stage0_iter6;
wire    ap_block_state29_pp0_stage0_iter7;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln193_fu_122_p2;
reg   [0:0] icmp_ln193_reg_300_pp0_iter1_reg;
reg   [0:0] icmp_ln193_reg_300_pp0_iter2_reg;
reg   [0:0] icmp_ln193_reg_300_pp0_iter3_reg;
reg   [0:0] icmp_ln193_reg_300_pp0_iter4_reg;
reg   [0:0] icmp_ln193_reg_300_pp0_iter5_reg;
reg   [0:0] icmp_ln193_reg_300_pp0_iter6_reg;
wire   [31:0] l_val_fu_139_p1;
reg   [31:0] l_val_reg_304;
reg    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state6_pp0_stage1_iter1;
wire    ap_block_state10_pp0_stage1_iter2;
wire    ap_block_state14_pp0_stage1_iter3;
wire    ap_block_state18_pp0_stage1_iter4;
wire    ap_block_state22_pp0_stage1_iter5;
wire    ap_block_state26_pp0_stage1_iter6;
wire    ap_block_state30_pp0_stage1_iter7;
reg    ap_block_pp0_stage1_11001;
reg   [31:0] l_val_14_reg_309;
wire   [31:0] l_val_15_fu_143_p1;
reg   [31:0] l_val_15_reg_314;
reg    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_state7_pp0_stage2_iter1;
wire    ap_block_state11_pp0_stage2_iter2;
wire    ap_block_state15_pp0_stage2_iter3;
wire    ap_block_state19_pp0_stage2_iter4;
wire    ap_block_state23_pp0_stage2_iter5;
wire    ap_block_state27_pp0_stage2_iter6;
reg    ap_block_state31_pp0_stage2_iter7;
reg    ap_block_pp0_stage2_11001;
reg   [31:0] l_val_16_reg_319;
wire   [31:0] bitcast_ln110_fu_147_p1;
reg    ap_block_pp0_stage3_11001;
wire   [31:0] bitcast_ln110_7_fu_151_p1;
wire   [31:0] bitcast_ln110_8_fu_155_p1;
wire   [31:0] bitcast_ln110_9_fu_159_p1;
wire   [31:0] l_val_17_fu_163_p1;
reg   [31:0] l_val_17_reg_344;
reg   [31:0] l_val_17_reg_344_pp0_iter1_reg;
reg   [31:0] l_val_18_reg_349;
reg   [31:0] l_val_18_reg_349_pp0_iter1_reg;
wire   [31:0] l_val_19_fu_167_p1;
reg   [31:0] l_val_19_reg_354;
reg   [31:0] l_val_19_reg_354_pp0_iter2_reg;
reg   [31:0] l_val_19_reg_354_pp0_iter3_reg;
reg   [31:0] l_val_19_reg_354_pp0_iter4_reg;
reg   [31:0] l_val_20_reg_359;
reg   [31:0] l_val_20_reg_359_pp0_iter2_reg;
reg   [31:0] l_val_20_reg_359_pp0_iter3_reg;
reg   [31:0] l_val_20_reg_359_pp0_iter4_reg;
wire   [31:0] grp_fu_87_p2;
reg   [31:0] add_reg_364;
wire   [31:0] grp_fu_91_p2;
reg   [31:0] add_s_reg_369;
wire   [31:0] bitcast_ln110_10_fu_171_p1;
wire   [31:0] bitcast_ln110_11_fu_175_p1;
reg   [31:0] add_1_reg_384;
reg   [31:0] add_1_1_reg_389;
wire   [31:0] bitcast_ln110_12_fu_179_p1;
wire   [31:0] bitcast_ln110_13_fu_183_p1;
wire   [0:0] icmp_ln196_fu_204_p2;
reg   [0:0] icmp_ln196_reg_404;
reg   [31:0] add_2_reg_410;
reg   [31:0] add_2_1_reg_415;
wire   [0:0] icmp_ln217_fu_210_p2;
wire   [31:0] select_ln196_1_fu_230_p3;
wire   [31:0] select_ln196_fu_241_p3;
wire   [31:0] grp_fu_95_p2;
reg   [31:0] add1_reg_434;
reg   [31:0] add40_1_reg_439;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage2_subdone;
reg   [8:0] k_fu_58;
wire   [8:0] k_2_fu_216_p2;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter6_stage2;
reg    ap_idle_pp0_0to5;
reg    ap_loop_init_pp0_iter2_reg;
reg    ap_loop_init_pp0_iter3_reg;
reg    ap_loop_init_pp0_iter4_reg;
reg    ap_loop_init_pp0_iter5_reg;
reg   [8:0] ap_sig_allocacmp_k_load;
reg   [31:0] empty_fu_62;
reg   [31:0] ap_sig_allocacmp_p_load13;
reg   [31:0] empty_75_fu_66;
reg   [31:0] ap_sig_allocacmp_p_load;
reg   [10:0] indvar_flatten_fu_70;
wire   [10:0] add_ln193_fu_128_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
reg    ap_block_pp0_stage2_01001;
reg   [31:0] grp_fu_87_p0;
reg   [31:0] grp_fu_87_p1;
reg   [31:0] grp_fu_91_p0;
reg   [31:0] grp_fu_91_p1;
reg   [31:0] grp_fu_95_p0;
reg   [31:0] grp_fu_95_p1;
wire   [0:0] icmp_ln194_fu_190_p2;
wire   [8:0] select_ln193_fu_196_p3;
wire   [31:0] l_val_V_13_fu_262_p1;
wire   [31:0] l_val_V_fu_259_p1;
reg    grp_fu_87_ce;
reg    grp_fu_91_ce;
reg    grp_fu_95_ce;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [3:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
reg    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_388;
reg    ap_condition_314;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

cemit_replaced_fadd_32ns_32ns_32_7_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 7 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U91(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_87_p0),
    .din1(grp_fu_87_p1),
    .ce(grp_fu_87_ce),
    .dout(grp_fu_87_p2)
);

cemit_replaced_fadd_32ns_32ns_32_7_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 7 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U92(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_91_p0),
    .din1(grp_fu_91_p1),
    .ce(grp_fu_91_ce),
    .dout(grp_fu_91_p2)
);

cemit_replaced_fadd_32ns_32ns_32_5_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_no_dsp_1_U93(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_95_p0),
    .din1(grp_fu_95_p1),
    .ce(grp_fu_95_ce),
    .dout(grp_fu_95_p2)
);

cemit_replaced_flow_control_loop_pipe flow_control_loop_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter7 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage2))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage2))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage2))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage2))) begin
        ap_loop_init_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage2))) begin
        ap_loop_init_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_init_pp0_iter2_reg <= ap_loop_init_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage2))) begin
        ap_loop_init_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_init_pp0_iter3_reg <= ap_loop_init_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage2))) begin
        ap_loop_init_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_init_pp0_iter4_reg <= ap_loop_init_pp0_iter3_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage2))) begin
        ap_loop_init_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_init_pp0_iter5_reg <= ap_loop_init_pp0_iter4_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_388)) begin
        if ((icmp_ln193_fu_122_p2 == 1'd0)) begin
            indvar_flatten_fu_70 <= add_ln193_fu_128_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_70 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_314)) begin
        k_fu_58 <= k_2_fu_216_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_434 <= grp_fu_95_p2;
        empty_fu_62 <= grp_fu_95_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add40_1_reg_439 <= grp_fu_95_p2;
        empty_75_fu_66 <= grp_fu_95_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_1_1_reg_389 <= grp_fu_91_p2;
        add_1_reg_384 <= grp_fu_87_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_2_1_reg_415 <= grp_fu_91_p2;
        add_2_reg_410 <= grp_fu_87_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_reg_364 <= grp_fu_87_p2;
        add_s_reg_369 <= grp_fu_91_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln193_reg_300 <= icmp_ln193_fu_122_p2;
        icmp_ln193_reg_300_pp0_iter1_reg <= icmp_ln193_reg_300;
        icmp_ln193_reg_300_pp0_iter2_reg <= icmp_ln193_reg_300_pp0_iter1_reg;
        icmp_ln193_reg_300_pp0_iter3_reg <= icmp_ln193_reg_300_pp0_iter2_reg;
        icmp_ln193_reg_300_pp0_iter4_reg <= icmp_ln193_reg_300_pp0_iter3_reg;
        icmp_ln193_reg_300_pp0_iter5_reg <= icmp_ln193_reg_300_pp0_iter4_reg;
        icmp_ln193_reg_300_pp0_iter6_reg <= icmp_ln193_reg_300_pp0_iter5_reg;
        l_val_19_reg_354 <= l_val_19_fu_167_p1;
        l_val_19_reg_354_pp0_iter2_reg <= l_val_19_reg_354;
        l_val_19_reg_354_pp0_iter3_reg <= l_val_19_reg_354_pp0_iter2_reg;
        l_val_19_reg_354_pp0_iter4_reg <= l_val_19_reg_354_pp0_iter3_reg;
        l_val_20_reg_359_pp0_iter2_reg <= l_val_20_reg_359;
        l_val_20_reg_359_pp0_iter3_reg <= l_val_20_reg_359_pp0_iter2_reg;
        l_val_20_reg_359_pp0_iter4_reg <= l_val_20_reg_359_pp0_iter3_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln196_reg_404 <= icmp_ln196_fu_204_p2;
        icmp_ln217_reg_420 <= icmp_ln217_fu_210_p2;
        icmp_ln217_reg_420_pp0_iter6_reg <= icmp_ln217_reg_420;
        l_val_17_reg_344_pp0_iter1_reg <= l_val_17_reg_344;
        l_val_18_reg_349_pp0_iter1_reg <= l_val_18_reg_349;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln193_reg_300 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        l_val_14_reg_309 <= {{l_mul1_dout[63:32]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln193_reg_300 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        l_val_15_reg_314 <= l_val_15_fu_143_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln193_reg_300 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        l_val_16_reg_319 <= {{l_mul1_dout[63:32]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln193_reg_300 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        l_val_17_reg_344 <= l_val_17_fu_163_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln193_reg_300 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        l_val_18_reg_349 <= {{l_mul1_dout[63:32]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        l_val_20_reg_359 <= {{l_mul1_dout[63:32]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln193_reg_300 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        l_val_reg_304 <= l_val_fu_139_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (icmp_ln193_reg_300 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln193_reg_300_pp0_iter6_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter6_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter6_stage2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to5 = 1'b1;
    end else begin
        ap_idle_pp0_0to5 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_70;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (ap_loop_init_pp0_iter5_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_sig_allocacmp_k_load = 9'd0;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_58;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_p_load = grp_fu_95_p2;
    end else begin
        ap_sig_allocacmp_p_load = empty_75_fu_66;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_p_load13 = grp_fu_95_p2;
    end else begin
        ap_sig_allocacmp_p_load13 = empty_fu_62;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_87_ce = 1'b1;
    end else begin
        grp_fu_87_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_87_p0 = add_1_reg_384;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_87_p0 = add_reg_364;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_87_p0 = bitcast_ln110_fu_147_p1;
    end else begin
        grp_fu_87_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_87_p1 = bitcast_ln110_12_fu_179_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_87_p1 = bitcast_ln110_10_fu_171_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_87_p1 = bitcast_ln110_8_fu_155_p1;
    end else begin
        grp_fu_87_p1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_91_ce = 1'b1;
    end else begin
        grp_fu_91_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_91_p0 = add_1_1_reg_389;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_91_p0 = add_s_reg_369;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_91_p0 = bitcast_ln110_7_fu_151_p1;
    end else begin
        grp_fu_91_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_91_p1 = bitcast_ln110_13_fu_183_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_91_p1 = bitcast_ln110_11_fu_175_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_91_p1 = bitcast_ln110_9_fu_159_p1;
    end else begin
        grp_fu_91_p1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_95_ce = 1'b1;
    end else begin
        grp_fu_95_ce = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter6 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_95_p0 = select_ln196_fu_241_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_95_p0 = select_ln196_1_fu_230_p3;
        end else begin
            grp_fu_95_p0 = 'bx;
        end
    end else begin
        grp_fu_95_p0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter6 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_95_p1 = add_2_1_reg_415;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_95_p1 = add_2_reg_410;
        end else begin
            grp_fu_95_p1 = 'bx;
        end
    end else begin
        grp_fu_95_p1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (icmp_ln193_reg_300 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (icmp_ln193_reg_300 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (icmp_ln193_reg_300 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        l_mul1_blk_n = l_mul1_empty_n;
    end else begin
        l_mul1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln193_reg_300 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln193_reg_300 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln193_reg_300 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        l_mul1_read = 1'b1;
    end else begin
        l_mul1_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln217_reg_420_pp0_iter6_reg == 1'd1))) begin
        l_sum_1_blk_n = l_sum_1_full_n;
    end else begin
        l_sum_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln217_reg_420_pp0_iter6_reg == 1'd1))) begin
        l_sum_1_write = 1'b1;
    end else begin
        l_sum_1_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln193_fu_128_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_done_reg == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((l_mul1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_done_reg == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((l_mul1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((icmp_ln193_reg_300 == 1'd0) & (l_mul1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((icmp_ln193_reg_300 == 1'd0) & (l_mul1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_01001 = (((icmp_ln193_reg_300 == 1'd0) & (l_mul1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((l_sum_1_full_n == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln217_reg_420_pp0_iter6_reg == 1'd1)));
end

always @ (*) begin
    ap_block_pp0_stage2_11001 = (((icmp_ln193_reg_300 == 1'd0) & (l_mul1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((l_sum_1_full_n == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln217_reg_420_pp0_iter6_reg == 1'd1)));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = (((icmp_ln193_reg_300 == 1'd0) & (l_mul1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((l_sum_1_full_n == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln217_reg_420_pp0_iter6_reg == 1'd1)));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_11001 = ((ap_done_reg == 1'b1) | ((icmp_ln193_reg_300 == 1'd0) & (l_mul1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = ((ap_done_reg == 1'b1) | ((icmp_ln193_reg_300 == 1'd0) & (l_mul1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

assign ap_block_state10_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage2_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage3_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage2_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage3_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage1_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage2_iter4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end

assign ap_block_state20_pp0_stage3_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage1_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage2_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage3_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage1_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage2_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage3_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = ((icmp_ln193_reg_300 == 1'd0) & (l_mul1_empty_n == 1'b0));
end

assign ap_block_state30_pp0_stage1_iter7 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state31_pp0_stage2_iter7 = ((l_sum_1_full_n == 1'b0) & (icmp_ln217_reg_420_pp0_iter6_reg == 1'd1));
end

always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = ((icmp_ln193_reg_300 == 1'd0) & (l_mul1_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage3_iter0 = ((icmp_ln193_reg_300 == 1'd0) & (l_mul1_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter1 = (l_mul1_empty_n == 1'b0);
end

assign ap_block_state6_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage3_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_314 = ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end

always @ (*) begin
    ap_condition_388 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;

assign bitcast_ln110_10_fu_171_p1 = l_val_17_reg_344_pp0_iter1_reg;

assign bitcast_ln110_11_fu_175_p1 = l_val_18_reg_349_pp0_iter1_reg;

assign bitcast_ln110_12_fu_179_p1 = l_val_19_reg_354_pp0_iter4_reg;

assign bitcast_ln110_13_fu_183_p1 = l_val_20_reg_359_pp0_iter4_reg;

assign bitcast_ln110_7_fu_151_p1 = l_val_14_reg_309;

assign bitcast_ln110_8_fu_155_p1 = l_val_15_reg_314;

assign bitcast_ln110_9_fu_159_p1 = l_val_16_reg_319;

assign bitcast_ln110_fu_147_p1 = l_val_reg_304;

assign icmp_ln193_fu_122_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1280) ? 1'b1 : 1'b0);

assign icmp_ln194_fu_190_p2 = ((ap_sig_allocacmp_k_load == 9'd256) ? 1'b1 : 1'b0);

assign icmp_ln196_fu_204_p2 = ((select_ln193_fu_196_p3 == 9'd0) ? 1'b1 : 1'b0);

assign icmp_ln217_fu_210_p2 = ((select_ln193_fu_196_p3 == 9'd255) ? 1'b1 : 1'b0);

assign k_2_fu_216_p2 = (select_ln193_fu_196_p3 + 9'd1);

assign l_sum_1_din = {{l_val_V_13_fu_262_p1}, {l_val_V_fu_259_p1}};

assign l_val_15_fu_143_p1 = l_mul1_dout[31:0];

assign l_val_17_fu_163_p1 = l_mul1_dout[31:0];

assign l_val_19_fu_167_p1 = l_mul1_dout[31:0];

assign l_val_V_13_fu_262_p1 = add40_1_reg_439;

assign l_val_V_fu_259_p1 = add1_reg_434;

assign l_val_fu_139_p1 = l_mul1_dout[31:0];

assign select_ln193_fu_196_p3 = ((icmp_ln194_fu_190_p2[0:0] == 1'b1) ? 9'd0 : ap_sig_allocacmp_k_load);

assign select_ln196_1_fu_230_p3 = ((icmp_ln196_reg_404[0:0] == 1'b1) ? 32'd0 : ap_sig_allocacmp_p_load13);

assign select_ln196_fu_241_p3 = ((icmp_ln196_reg_404[0:0] == 1'b1) ? 32'd0 : ap_sig_allocacmp_p_load);

endmodule //cemit_replaced_adds_3
