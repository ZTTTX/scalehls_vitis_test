// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cemit_replaced_muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        l_Tc_m_Sreg_Array_1_address0,
        l_Tc_m_Sreg_Array_1_ce0,
        l_Tc_m_Sreg_Array_1_we0,
        l_Tc_m_Sreg_Array_1_d0,
        l_Tc_m_Sreg_Array_1_q0,
        l_Tc_m_Sreg_Array_address0,
        l_Tc_m_Sreg_Array_ce0,
        l_Tc_m_Sreg_Array_we0,
        l_Tc_m_Sreg_Array_d0,
        l_Tc_m_Sreg_Array_q0
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] l_Tc_m_Sreg_Array_1_address0;
output   l_Tc_m_Sreg_Array_1_ce0;
output   l_Tc_m_Sreg_Array_1_we0;
output  [31:0] l_Tc_m_Sreg_Array_1_d0;
input  [31:0] l_Tc_m_Sreg_Array_1_q0;
output  [0:0] l_Tc_m_Sreg_Array_address0;
output   l_Tc_m_Sreg_Array_ce0;
output   l_Tc_m_Sreg_Array_we0;
output  [31:0] l_Tc_m_Sreg_Array_d0;
input  [31:0] l_Tc_m_Sreg_Array_q0;

reg ap_idle;
reg l_Tc_m_Sreg_Array_1_ce0;
reg l_Tc_m_Sreg_Array_1_we0;
reg l_Tc_m_Sreg_Array_ce0;
reg l_Tc_m_Sreg_Array_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln633_fu_93_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] col_fu_44;
wire   [1:0] col_7_fu_158_p3;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_col_6;
reg   [1:0] row_fu_48;
wire   [1:0] select_ln633_fu_120_p3;
reg   [1:0] ap_sig_allocacmp_row_load;
reg   [2:0] indvar_flatten_fu_52;
wire   [2:0] add_ln633_2_fu_99_p2;
reg   [2:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [0:0] trunc_ln633_fu_128_p1;
wire   [0:0] icmp_ln634_fu_114_p2;
wire   [1:0] add_ln633_fu_108_p2;
wire   [1:0] add_ln634_fu_152_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

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
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if ((icmp_ln633_fu_93_p2 == 1'd0)) begin
            col_fu_44 <= col_7_fu_158_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            col_fu_44 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if ((icmp_ln633_fu_93_p2 == 1'd0)) begin
            indvar_flatten_fu_52 <= add_ln633_2_fu_99_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_52 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        if ((icmp_ln633_fu_93_p2 == 1'd0)) begin
            row_fu_48 <= select_ln633_fu_120_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            row_fu_48 <= 2'd0;
        end
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln633_fu_93_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_col_6 = 2'd0;
    end else begin
        ap_sig_allocacmp_col_6 = col_fu_44;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 3'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_52;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_row_load = 2'd0;
    end else begin
        ap_sig_allocacmp_row_load = row_fu_48;
    end
end

always @ (*) begin
    if (((trunc_ln633_fu_128_p1 == 1'd1) & (icmp_ln633_fu_93_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        l_Tc_m_Sreg_Array_1_ce0 = 1'd1;
    end else begin
        l_Tc_m_Sreg_Array_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln633_fu_128_p1 == 1'd1) & (icmp_ln633_fu_93_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        l_Tc_m_Sreg_Array_1_we0 = 1'd1;
    end else begin
        l_Tc_m_Sreg_Array_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln633_fu_128_p1 == 1'd0) & (icmp_ln633_fu_93_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        l_Tc_m_Sreg_Array_ce0 = 1'd1;
    end else begin
        l_Tc_m_Sreg_Array_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln633_fu_128_p1 == 1'd0) & (icmp_ln633_fu_93_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        l_Tc_m_Sreg_Array_we0 = 1'd1;
    end else begin
        l_Tc_m_Sreg_Array_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln633_2_fu_99_p2 = (ap_sig_allocacmp_indvar_flatten_load + 3'd1);

assign add_ln633_fu_108_p2 = (ap_sig_allocacmp_row_load + 2'd1);

assign add_ln634_fu_152_p2 = (ap_sig_allocacmp_col_6 + 2'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign col_7_fu_158_p3 = ((icmp_ln634_fu_114_p2[0:0] == 1'b1) ? 2'd1 : add_ln634_fu_152_p2);

assign icmp_ln633_fu_93_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln634_fu_114_p2 = ((ap_sig_allocacmp_col_6 == 2'd2) ? 1'b1 : 1'b0);

assign l_Tc_m_Sreg_Array_1_address0 = 64'd0;

assign l_Tc_m_Sreg_Array_1_d0 = 32'd0;

assign l_Tc_m_Sreg_Array_address0 = 64'd0;

assign l_Tc_m_Sreg_Array_d0 = 32'd0;

assign select_ln633_fu_120_p3 = ((icmp_ln634_fu_114_p2[0:0] == 1'b1) ? add_ln633_fu_108_p2 : ap_sig_allocacmp_row_load);

assign trunc_ln633_fu_128_p1 = select_ln633_fu_120_p3[0:0];

endmodule //cemit_replaced_muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2