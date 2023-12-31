// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cemit_replaced_muls_Pipeline_VITIS_LOOP_101_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        l_dataA_0_dout,
        l_dataA_0_num_data_valid,
        l_dataA_0_fifo_cap,
        l_dataA_0_empty_n,
        l_dataA_0_read,
        l_dataB_0_dout,
        l_dataB_0_num_data_valid,
        l_dataB_0_fifo_cap,
        l_dataB_0_empty_n,
        l_dataB_0_read,
        l_dataB_1_din,
        l_dataB_1_num_data_valid,
        l_dataB_1_fifo_cap,
        l_dataB_1_full_n,
        l_dataB_1_write,
        l_mul1_din,
        l_mul1_num_data_valid,
        l_mul1_fifo_cap,
        l_mul1_full_n,
        l_mul1_write,
        l_Tc_m_Sreg_Array_2_address0,
        l_Tc_m_Sreg_Array_2_ce0,
        l_Tc_m_Sreg_Array_2_we0,
        l_Tc_m_Sreg_Array_2_d0,
        l_Tc_m_Sreg_Array_2_q0,
        l_Tc_m_Sreg_Array_address0,
        l_Tc_m_Sreg_Array_ce0,
        l_Tc_m_Sreg_Array_we0,
        l_Tc_m_Sreg_Array_d0,
        l_Tc_m_Sreg_Array_q0,
        l_flush_Array_address0,
        l_flush_Array_ce0,
        l_flush_Array_we0,
        l_flush_Array_d0,
        l_flush_Array_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [33:0] l_dataA_0_dout;
input  [2:0] l_dataA_0_num_data_valid;
input  [2:0] l_dataA_0_fifo_cap;
input   l_dataA_0_empty_n;
output   l_dataA_0_read;
input  [63:0] l_dataB_0_dout;
input  [2:0] l_dataB_0_num_data_valid;
input  [2:0] l_dataB_0_fifo_cap;
input   l_dataB_0_empty_n;
output   l_dataB_0_read;
output  [63:0] l_dataB_1_din;
input  [1:0] l_dataB_1_num_data_valid;
input  [1:0] l_dataB_1_fifo_cap;
input   l_dataB_1_full_n;
output   l_dataB_1_write;
output  [63:0] l_mul1_din;
input  [1:0] l_mul1_num_data_valid;
input  [1:0] l_mul1_fifo_cap;
input   l_mul1_full_n;
output   l_mul1_write;
output  [0:0] l_Tc_m_Sreg_Array_2_address0;
output   l_Tc_m_Sreg_Array_2_ce0;
output   l_Tc_m_Sreg_Array_2_we0;
output  [31:0] l_Tc_m_Sreg_Array_2_d0;
input  [31:0] l_Tc_m_Sreg_Array_2_q0;
output  [0:0] l_Tc_m_Sreg_Array_address0;
output   l_Tc_m_Sreg_Array_ce0;
output   l_Tc_m_Sreg_Array_we0;
output  [31:0] l_Tc_m_Sreg_Array_d0;
input  [31:0] l_Tc_m_Sreg_Array_q0;
output  [0:0] l_flush_Array_address0;
output   l_flush_Array_ce0;
output   l_flush_Array_we0;
output  [0:0] l_flush_Array_d0;
input  [0:0] l_flush_Array_q0;

reg ap_idle;
reg l_dataA_0_read;
reg l_dataB_0_read;
reg l_dataB_1_write;
reg l_mul1_write;
reg l_Tc_m_Sreg_Array_2_ce0;
reg l_Tc_m_Sreg_Array_2_we0;
reg l_Tc_m_Sreg_Array_ce0;
reg l_Tc_m_Sreg_Array_we0;
reg l_flush_Array_ce0;
reg l_flush_Array_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
reg   [0:0] icmp_ln130_reg_390;
reg    ap_block_state6_pp0_stage0_iter5;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] trunc_ln628_fu_162_p1;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    l_dataA_0_blk_n;
wire    ap_block_pp0_stage0;
reg    l_dataB_0_blk_n;
reg    l_dataB_1_blk_n;
reg    l_mul1_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] trunc_ln628_reg_336;
reg   [31:0] tmp5_reg_340;
reg   [0:0] p_Result_s_reg_345;
reg   [0:0] p_Result_s_reg_345_pp0_iter1_reg;
reg   [0:0] p_Result_s_reg_345_pp0_iter2_reg;
reg   [0:0] p_Result_s_reg_345_pp0_iter3_reg;
wire   [31:0] l_val_fu_184_p1;
reg   [31:0] l_val_reg_350;
reg   [31:0] l_val_8_reg_355;
wire   [31:0] grp_fu_139_p2;
reg   [31:0] DataIn_assign_5_reg_380;
wire   [31:0] grp_fu_143_p2;
reg   [31:0] DataIn_assign_4_reg_385;
wire   [0:0] icmp_ln130_fu_257_p2;
reg   [31:0] l_outCount_fu_76;
wire   [31:0] l_outCount_2_fu_239_p3;
wire   [31:0] l_outCount_3_fu_268_p2;
wire    ap_loop_init;
reg   [31:0] empty_fu_80;
reg   [31:0] l_aVal_fu_84;
wire   [31:0] l_c_m_val_fu_206_p1;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] grp_fu_139_p1;
wire   [31:0] grp_fu_143_p1;
wire   [21:0] tmp_fu_247_p4;
wire   [31:0] l_val_V_7_fu_301_p1;
wire   [31:0] l_val_V_6_fu_297_p1;
reg    grp_fu_139_ce;
reg    grp_fu_143_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_done_reg = 1'b0;
end

cemit_replaced_fmul_32ns_32ns_32_4_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U46(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(l_aVal_fu_84),
    .din1(grp_fu_139_p1),
    .ce(grp_fu_139_ce),
    .dout(grp_fu_139_p2)
);

cemit_replaced_fmul_32ns_32ns_32_4_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U47(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(empty_fu_80),
    .din1(grp_fu_143_p1),
    .ce(grp_fu_143_ce),
    .dout(grp_fu_143_p2)
);

cemit_replaced_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            empty_fu_80 <= 32'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln628_reg_336 == 1'd0))) begin
            empty_fu_80 <= l_aVal_fu_84;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            l_aVal_fu_84 <= 32'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln628_reg_336 == 1'd0))) begin
            l_aVal_fu_84 <= l_c_m_val_fu_206_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            l_outCount_fu_76 <= 32'd1024;
        end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln130_fu_257_p2 == 1'd1))) begin
            l_outCount_fu_76 <= l_outCount_3_fu_268_p2;
        end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln130_fu_257_p2 == 1'd0))) begin
            l_outCount_fu_76 <= l_outCount_2_fu_239_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        DataIn_assign_4_reg_385 <= grp_fu_143_p2;
        DataIn_assign_5_reg_380 <= grp_fu_139_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        icmp_ln130_reg_390 <= icmp_ln130_fu_257_p2;
        p_Result_s_reg_345_pp0_iter2_reg <= p_Result_s_reg_345_pp0_iter1_reg;
        p_Result_s_reg_345_pp0_iter3_reg <= p_Result_s_reg_345_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        l_val_8_reg_355 <= {{l_dataB_0_dout[63:32]}};
        l_val_reg_350 <= l_val_fu_184_p1;
        p_Result_s_reg_345 <= l_dataA_0_dout[32'd1];
        p_Result_s_reg_345_pp0_iter1_reg <= p_Result_s_reg_345;
        tmp5_reg_340 <= {{l_dataA_0_dout[33:2]}};
        trunc_ln628_reg_336 <= trunc_ln628_fu_162_p1;
    end
end

always @ (*) begin
    if (((trunc_ln628_fu_162_p1 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_139_ce = 1'b1;
    end else begin
        grp_fu_139_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_143_ce = 1'b1;
    end else begin
        grp_fu_143_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        l_Tc_m_Sreg_Array_2_ce0 = 1'd1;
    end else begin
        l_Tc_m_Sreg_Array_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        l_Tc_m_Sreg_Array_2_we0 = 1'd1;
    end else begin
        l_Tc_m_Sreg_Array_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        l_Tc_m_Sreg_Array_ce0 = 1'd1;
    end else begin
        l_Tc_m_Sreg_Array_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        l_Tc_m_Sreg_Array_we0 = 1'd1;
    end else begin
        l_Tc_m_Sreg_Array_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        l_dataA_0_blk_n = l_dataA_0_empty_n;
    end else begin
        l_dataA_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        l_dataA_0_read = 1'b1;
    end else begin
        l_dataA_0_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        l_dataB_0_blk_n = l_dataB_0_empty_n;
    end else begin
        l_dataB_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        l_dataB_0_read = 1'b1;
    end else begin
        l_dataB_0_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        l_dataB_1_blk_n = l_dataB_1_full_n;
    end else begin
        l_dataB_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        l_dataB_1_write = 1'b1;
    end else begin
        l_dataB_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        l_flush_Array_ce0 = 1'd1;
    end else begin
        l_flush_Array_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        l_flush_Array_we0 = 1'd1;
    end else begin
        l_flush_Array_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln130_reg_390 == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        l_mul1_blk_n = l_mul1_full_n;
    end else begin
        l_mul1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln130_reg_390 == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        l_mul1_write = 1'b1;
    end else begin
        l_mul1_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln130_reg_390 == 1'd1) & (l_mul1_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((ap_start_int == 1'b1) & ((l_dataB_1_full_n == 1'b0) | (l_dataB_0_empty_n == 1'b0) | (l_dataA_0_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln130_reg_390 == 1'd1) & (l_mul1_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((ap_start_int == 1'b1) & ((l_dataB_1_full_n == 1'b0) | (l_dataB_0_empty_n == 1'b0) | (l_dataA_0_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln130_reg_390 == 1'd1) & (l_mul1_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((ap_start_int == 1'b1) & ((l_dataB_1_full_n == 1'b0) | (l_dataB_0_empty_n == 1'b0) | (l_dataA_0_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((l_dataB_1_full_n == 1'b0) | (l_dataB_0_empty_n == 1'b0) | (l_dataA_0_empty_n == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp0_stage0_iter5 = ((icmp_ln130_reg_390 == 1'd1) & (l_mul1_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_139_p1 = l_val_reg_350;

assign grp_fu_143_p1 = l_val_8_reg_355;

assign icmp_ln130_fu_257_p2 = ((tmp_fu_247_p4 == 22'd0) ? 1'b1 : 1'b0);

assign l_Tc_m_Sreg_Array_2_address0 = 64'd1;

assign l_Tc_m_Sreg_Array_2_d0 = DataIn_assign_5_reg_380;

assign l_Tc_m_Sreg_Array_address0 = 64'd0;

assign l_Tc_m_Sreg_Array_d0 = DataIn_assign_4_reg_385;

assign l_c_m_val_fu_206_p1 = tmp5_reg_340;

assign l_dataB_1_din = l_dataB_0_dout;

assign l_flush_Array_address0 = 64'd1;

assign l_flush_Array_d0 = p_Result_s_reg_345_pp0_iter3_reg;

assign l_mul1_din = {{l_val_V_7_fu_301_p1}, {l_val_V_6_fu_297_p1}};

assign l_outCount_2_fu_239_p3 = ((l_flush_Array_q0[0:0] == 1'b1) ? 32'd0 : l_outCount_fu_76);

assign l_outCount_3_fu_268_p2 = (l_outCount_2_fu_239_p3 + 32'd1);

assign l_val_V_6_fu_297_p1 = l_Tc_m_Sreg_Array_2_q0;

assign l_val_V_7_fu_301_p1 = l_Tc_m_Sreg_Array_q0;

assign l_val_fu_184_p1 = l_dataB_0_dout[31:0];

assign tmp_fu_247_p4 = {{l_outCount_2_fu_239_p3[31:10]}};

assign trunc_ln628_fu_162_p1 = l_dataA_0_dout[0:0];

endmodule //cemit_replaced_muls_Pipeline_VITIS_LOOP_101_2
