-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cemit_replaced_process_r is
port (
    l_strA7_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    l_strA7_empty_n : IN STD_LOGIC;
    l_strA7_read : OUT STD_LOGIC;
    l_strB8_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    l_strB8_empty_n : IN STD_LOGIC;
    l_strB8_read : OUT STD_LOGIC;
    l_sum3_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    l_sum3_full_n : IN STD_LOGIC;
    l_sum3_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of cemit_replaced_process_r is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal tagAB_U0_ap_start : STD_LOGIC;
    signal tagAB_U0_ap_done : STD_LOGIC;
    signal tagAB_U0_ap_continue : STD_LOGIC;
    signal tagAB_U0_ap_idle : STD_LOGIC;
    signal tagAB_U0_ap_ready : STD_LOGIC;
    signal tagAB_U0_start_out : STD_LOGIC;
    signal tagAB_U0_start_write : STD_LOGIC;
    signal tagAB_U0_l_strA7_read : STD_LOGIC;
    signal tagAB_U0_l_strB8_read : STD_LOGIC;
    signal tagAB_U0_l_aStr1_din : STD_LOGIC_VECTOR (65 downto 0);
    signal tagAB_U0_l_aStr1_write : STD_LOGIC;
    signal tagAB_U0_l_bStr2_din : STD_LOGIC_VECTOR (63 downto 0);
    signal tagAB_U0_l_bStr2_write : STD_LOGIC;
    signal systolicArray_U0_ap_start : STD_LOGIC;
    signal systolicArray_U0_start_full_n : STD_LOGIC;
    signal systolicArray_U0_ap_done : STD_LOGIC;
    signal systolicArray_U0_ap_continue : STD_LOGIC;
    signal systolicArray_U0_ap_idle : STD_LOGIC;
    signal systolicArray_U0_ap_ready : STD_LOGIC;
    signal systolicArray_U0_start_out : STD_LOGIC;
    signal systolicArray_U0_start_write : STD_LOGIC;
    signal systolicArray_U0_l_aStr1_read : STD_LOGIC;
    signal systolicArray_U0_l_bStr2_read : STD_LOGIC;
    signal systolicArray_U0_l_dataA_0_din : STD_LOGIC_VECTOR (33 downto 0);
    signal systolicArray_U0_l_dataA_0_write : STD_LOGIC;
    signal systolicArray_U0_l_dataA_1_din : STD_LOGIC_VECTOR (33 downto 0);
    signal systolicArray_U0_l_dataA_1_write : STD_LOGIC;
    signal systolicArray_U0_l_dataB_0_din : STD_LOGIC_VECTOR (63 downto 0);
    signal systolicArray_U0_l_dataB_0_write : STD_LOGIC;
    signal macs_U0_ap_start : STD_LOGIC;
    signal macs_U0_start_out : STD_LOGIC;
    signal macs_U0_start_write : STD_LOGIC;
    signal macs_U0_l_dataA_0_read : STD_LOGIC;
    signal macs_U0_l_dataB_0_read : STD_LOGIC;
    signal macs_U0_l_dataB_1_din : STD_LOGIC_VECTOR (63 downto 0);
    signal macs_U0_l_dataB_1_write : STD_LOGIC;
    signal macs_U0_l_sum_0_din : STD_LOGIC_VECTOR (63 downto 0);
    signal macs_U0_l_sum_0_write : STD_LOGIC;
    signal macs_U0_ap_done : STD_LOGIC;
    signal macs_U0_ap_ready : STD_LOGIC;
    signal macs_U0_ap_idle : STD_LOGIC;
    signal macs_U0_ap_continue : STD_LOGIC;
    signal macs_1_U0_l_dataA_1_read : STD_LOGIC;
    signal macs_1_U0_l_dataB_1_read : STD_LOGIC;
    signal macs_1_U0_l_sum_1_din : STD_LOGIC_VECTOR (63 downto 0);
    signal macs_1_U0_l_sum_1_write : STD_LOGIC;
    signal macs_1_U0_ap_start : STD_LOGIC;
    signal macs_1_U0_ap_done : STD_LOGIC;
    signal macs_1_U0_ap_ready : STD_LOGIC;
    signal macs_1_U0_ap_idle : STD_LOGIC;
    signal macs_1_U0_ap_continue : STD_LOGIC;
    signal merge_U0_ap_start : STD_LOGIC;
    signal merge_U0_ap_done : STD_LOGIC;
    signal merge_U0_ap_continue : STD_LOGIC;
    signal merge_U0_ap_idle : STD_LOGIC;
    signal merge_U0_ap_ready : STD_LOGIC;
    signal merge_U0_l_sum3_din : STD_LOGIC_VECTOR (63 downto 0);
    signal merge_U0_l_sum3_write : STD_LOGIC;
    signal merge_U0_l_sum_0_read : STD_LOGIC;
    signal merge_U0_l_sum_1_read : STD_LOGIC;
    signal l_aStr_full_n : STD_LOGIC;
    signal l_aStr_dout : STD_LOGIC_VECTOR (65 downto 0);
    signal l_aStr_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal l_aStr_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal l_aStr_empty_n : STD_LOGIC;
    signal l_bStr_full_n : STD_LOGIC;
    signal l_bStr_dout : STD_LOGIC_VECTOR (63 downto 0);
    signal l_bStr_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal l_bStr_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal l_bStr_empty_n : STD_LOGIC;
    signal l_dataA_0_full_n : STD_LOGIC;
    signal l_dataA_0_dout : STD_LOGIC_VECTOR (33 downto 0);
    signal l_dataA_0_num_data_valid : STD_LOGIC_VECTOR (2 downto 0);
    signal l_dataA_0_fifo_cap : STD_LOGIC_VECTOR (2 downto 0);
    signal l_dataA_0_empty_n : STD_LOGIC;
    signal l_dataA_1_full_n : STD_LOGIC;
    signal l_dataA_1_dout : STD_LOGIC_VECTOR (33 downto 0);
    signal l_dataA_1_num_data_valid : STD_LOGIC_VECTOR (2 downto 0);
    signal l_dataA_1_fifo_cap : STD_LOGIC_VECTOR (2 downto 0);
    signal l_dataA_1_empty_n : STD_LOGIC;
    signal l_dataB_0_full_n : STD_LOGIC;
    signal l_dataB_0_dout : STD_LOGIC_VECTOR (63 downto 0);
    signal l_dataB_0_num_data_valid : STD_LOGIC_VECTOR (2 downto 0);
    signal l_dataB_0_fifo_cap : STD_LOGIC_VECTOR (2 downto 0);
    signal l_dataB_0_empty_n : STD_LOGIC;
    signal l_dataB_1_full_n : STD_LOGIC;
    signal l_dataB_1_dout : STD_LOGIC_VECTOR (63 downto 0);
    signal l_dataB_1_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal l_dataB_1_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal l_dataB_1_empty_n : STD_LOGIC;
    signal l_sum_0_full_n : STD_LOGIC;
    signal l_sum_0_dout : STD_LOGIC_VECTOR (63 downto 0);
    signal l_sum_0_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal l_sum_0_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal l_sum_0_empty_n : STD_LOGIC;
    signal l_sum_1_full_n : STD_LOGIC;
    signal l_sum_1_dout : STD_LOGIC_VECTOR (63 downto 0);
    signal l_sum_1_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal l_sum_1_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal l_sum_1_empty_n : STD_LOGIC;
    signal start_for_systolicArray_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_systolicArray_U0_full_n : STD_LOGIC;
    signal start_for_systolicArray_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_systolicArray_U0_empty_n : STD_LOGIC;
    signal start_for_macs_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_macs_U0_full_n : STD_LOGIC;
    signal start_for_macs_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_macs_U0_empty_n : STD_LOGIC;
    signal start_for_macs_1_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_macs_1_U0_full_n : STD_LOGIC;
    signal start_for_macs_1_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_macs_1_U0_empty_n : STD_LOGIC;
    signal start_for_merge_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_merge_U0_full_n : STD_LOGIC;
    signal start_for_merge_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_merge_U0_empty_n : STD_LOGIC;

    component cemit_replaced_tagAB IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        l_strA7_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        l_strA7_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        l_strA7_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        l_strA7_empty_n : IN STD_LOGIC;
        l_strA7_read : OUT STD_LOGIC;
        l_strB8_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        l_strB8_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        l_strB8_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        l_strB8_empty_n : IN STD_LOGIC;
        l_strB8_read : OUT STD_LOGIC;
        l_aStr1_din : OUT STD_LOGIC_VECTOR (65 downto 0);
        l_aStr1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        l_aStr1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        l_aStr1_full_n : IN STD_LOGIC;
        l_aStr1_write : OUT STD_LOGIC;
        l_bStr2_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        l_bStr2_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        l_bStr2_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        l_bStr2_full_n : IN STD_LOGIC;
        l_bStr2_write : OUT STD_LOGIC );
    end component;


    component cemit_replaced_systolicArray IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        l_aStr1_dout : IN STD_LOGIC_VECTOR (65 downto 0);
        l_aStr1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        l_aStr1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        l_aStr1_empty_n : IN STD_LOGIC;
        l_aStr1_read : OUT STD_LOGIC;
        l_bStr2_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        l_bStr2_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        l_bStr2_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        l_bStr2_empty_n : IN STD_LOGIC;
        l_bStr2_read : OUT STD_LOGIC;
        l_dataA_0_din : OUT STD_LOGIC_VECTOR (33 downto 0);
        l_dataA_0_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
        l_dataA_0_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
        l_dataA_0_full_n : IN STD_LOGIC;
        l_dataA_0_write : OUT STD_LOGIC;
        l_dataA_1_din : OUT STD_LOGIC_VECTOR (33 downto 0);
        l_dataA_1_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
        l_dataA_1_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
        l_dataA_1_full_n : IN STD_LOGIC;
        l_dataA_1_write : OUT STD_LOGIC;
        l_dataB_0_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        l_dataB_0_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
        l_dataB_0_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
        l_dataB_0_full_n : IN STD_LOGIC;
        l_dataB_0_write : OUT STD_LOGIC );
    end component;


    component cemit_replaced_macs IS
    port (
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        l_dataA_0_dout : IN STD_LOGIC_VECTOR (33 downto 0);
        l_dataA_0_empty_n : IN STD_LOGIC;
        l_dataA_0_read : OUT STD_LOGIC;
        l_dataB_0_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        l_dataB_0_empty_n : IN STD_LOGIC;
        l_dataB_0_read : OUT STD_LOGIC;
        l_dataB_1_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        l_dataB_1_full_n : IN STD_LOGIC;
        l_dataB_1_write : OUT STD_LOGIC;
        l_sum_0_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        l_sum_0_full_n : IN STD_LOGIC;
        l_sum_0_write : OUT STD_LOGIC;
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component cemit_replaced_macs_1 IS
    port (
        l_dataA_1_dout : IN STD_LOGIC_VECTOR (33 downto 0);
        l_dataA_1_empty_n : IN STD_LOGIC;
        l_dataA_1_read : OUT STD_LOGIC;
        l_dataB_1_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        l_dataB_1_empty_n : IN STD_LOGIC;
        l_dataB_1_read : OUT STD_LOGIC;
        l_sum_1_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        l_sum_1_full_n : IN STD_LOGIC;
        l_sum_1_write : OUT STD_LOGIC;
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component cemit_replaced_merge IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        l_sum3_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        l_sum3_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        l_sum3_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        l_sum3_full_n : IN STD_LOGIC;
        l_sum3_write : OUT STD_LOGIC;
        l_sum_0_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        l_sum_0_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        l_sum_0_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        l_sum_0_empty_n : IN STD_LOGIC;
        l_sum_0_read : OUT STD_LOGIC;
        l_sum_1_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        l_sum_1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        l_sum_1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        l_sum_1_empty_n : IN STD_LOGIC;
        l_sum_1_read : OUT STD_LOGIC );
    end component;


    component cemit_replaced_fifo_w66_d2_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (65 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (65 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component cemit_replaced_fifo_w64_d2_S_x0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (63 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (63 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component cemit_replaced_fifo_w34_d4_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (33 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (33 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (2 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (2 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component cemit_replaced_fifo_w64_d4_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (63 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (63 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (2 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (2 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component cemit_replaced_start_for_systolicArray_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component cemit_replaced_start_for_macs_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component cemit_replaced_start_for_macs_1_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component cemit_replaced_start_for_merge_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    tagAB_U0 : component cemit_replaced_tagAB
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => tagAB_U0_ap_start,
        start_full_n => start_for_systolicArray_U0_full_n,
        ap_done => tagAB_U0_ap_done,
        ap_continue => tagAB_U0_ap_continue,
        ap_idle => tagAB_U0_ap_idle,
        ap_ready => tagAB_U0_ap_ready,
        start_out => tagAB_U0_start_out,
        start_write => tagAB_U0_start_write,
        l_strA7_dout => l_strA7_dout,
        l_strA7_num_data_valid => ap_const_lv2_0,
        l_strA7_fifo_cap => ap_const_lv2_0,
        l_strA7_empty_n => l_strA7_empty_n,
        l_strA7_read => tagAB_U0_l_strA7_read,
        l_strB8_dout => l_strB8_dout,
        l_strB8_num_data_valid => ap_const_lv2_0,
        l_strB8_fifo_cap => ap_const_lv2_0,
        l_strB8_empty_n => l_strB8_empty_n,
        l_strB8_read => tagAB_U0_l_strB8_read,
        l_aStr1_din => tagAB_U0_l_aStr1_din,
        l_aStr1_num_data_valid => l_aStr_num_data_valid,
        l_aStr1_fifo_cap => l_aStr_fifo_cap,
        l_aStr1_full_n => l_aStr_full_n,
        l_aStr1_write => tagAB_U0_l_aStr1_write,
        l_bStr2_din => tagAB_U0_l_bStr2_din,
        l_bStr2_num_data_valid => l_bStr_num_data_valid,
        l_bStr2_fifo_cap => l_bStr_fifo_cap,
        l_bStr2_full_n => l_bStr_full_n,
        l_bStr2_write => tagAB_U0_l_bStr2_write);

    systolicArray_U0 : component cemit_replaced_systolicArray
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => systolicArray_U0_ap_start,
        start_full_n => systolicArray_U0_start_full_n,
        ap_done => systolicArray_U0_ap_done,
        ap_continue => systolicArray_U0_ap_continue,
        ap_idle => systolicArray_U0_ap_idle,
        ap_ready => systolicArray_U0_ap_ready,
        start_out => systolicArray_U0_start_out,
        start_write => systolicArray_U0_start_write,
        l_aStr1_dout => l_aStr_dout,
        l_aStr1_num_data_valid => l_aStr_num_data_valid,
        l_aStr1_fifo_cap => l_aStr_fifo_cap,
        l_aStr1_empty_n => l_aStr_empty_n,
        l_aStr1_read => systolicArray_U0_l_aStr1_read,
        l_bStr2_dout => l_bStr_dout,
        l_bStr2_num_data_valid => l_bStr_num_data_valid,
        l_bStr2_fifo_cap => l_bStr_fifo_cap,
        l_bStr2_empty_n => l_bStr_empty_n,
        l_bStr2_read => systolicArray_U0_l_bStr2_read,
        l_dataA_0_din => systolicArray_U0_l_dataA_0_din,
        l_dataA_0_num_data_valid => l_dataA_0_num_data_valid,
        l_dataA_0_fifo_cap => l_dataA_0_fifo_cap,
        l_dataA_0_full_n => l_dataA_0_full_n,
        l_dataA_0_write => systolicArray_U0_l_dataA_0_write,
        l_dataA_1_din => systolicArray_U0_l_dataA_1_din,
        l_dataA_1_num_data_valid => l_dataA_1_num_data_valid,
        l_dataA_1_fifo_cap => l_dataA_1_fifo_cap,
        l_dataA_1_full_n => l_dataA_1_full_n,
        l_dataA_1_write => systolicArray_U0_l_dataA_1_write,
        l_dataB_0_din => systolicArray_U0_l_dataB_0_din,
        l_dataB_0_num_data_valid => l_dataB_0_num_data_valid,
        l_dataB_0_fifo_cap => l_dataB_0_fifo_cap,
        l_dataB_0_full_n => l_dataB_0_full_n,
        l_dataB_0_write => systolicArray_U0_l_dataB_0_write);

    macs_U0 : component cemit_replaced_macs
    port map (
        ap_start => macs_U0_ap_start,
        start_full_n => start_for_merge_U0_full_n,
        start_out => macs_U0_start_out,
        start_write => macs_U0_start_write,
        l_dataA_0_dout => l_dataA_0_dout,
        l_dataA_0_empty_n => l_dataA_0_empty_n,
        l_dataA_0_read => macs_U0_l_dataA_0_read,
        l_dataB_0_dout => l_dataB_0_dout,
        l_dataB_0_empty_n => l_dataB_0_empty_n,
        l_dataB_0_read => macs_U0_l_dataB_0_read,
        l_dataB_1_din => macs_U0_l_dataB_1_din,
        l_dataB_1_full_n => l_dataB_1_full_n,
        l_dataB_1_write => macs_U0_l_dataB_1_write,
        l_sum_0_din => macs_U0_l_sum_0_din,
        l_sum_0_full_n => l_sum_0_full_n,
        l_sum_0_write => macs_U0_l_sum_0_write,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_done => macs_U0_ap_done,
        ap_ready => macs_U0_ap_ready,
        ap_idle => macs_U0_ap_idle,
        ap_continue => macs_U0_ap_continue);

    macs_1_U0 : component cemit_replaced_macs_1
    port map (
        l_dataA_1_dout => l_dataA_1_dout,
        l_dataA_1_empty_n => l_dataA_1_empty_n,
        l_dataA_1_read => macs_1_U0_l_dataA_1_read,
        l_dataB_1_dout => l_dataB_1_dout,
        l_dataB_1_empty_n => l_dataB_1_empty_n,
        l_dataB_1_read => macs_1_U0_l_dataB_1_read,
        l_sum_1_din => macs_1_U0_l_sum_1_din,
        l_sum_1_full_n => l_sum_1_full_n,
        l_sum_1_write => macs_1_U0_l_sum_1_write,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => macs_1_U0_ap_start,
        ap_done => macs_1_U0_ap_done,
        ap_ready => macs_1_U0_ap_ready,
        ap_idle => macs_1_U0_ap_idle,
        ap_continue => macs_1_U0_ap_continue);

    merge_U0 : component cemit_replaced_merge
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => merge_U0_ap_start,
        ap_done => merge_U0_ap_done,
        ap_continue => merge_U0_ap_continue,
        ap_idle => merge_U0_ap_idle,
        ap_ready => merge_U0_ap_ready,
        l_sum3_din => merge_U0_l_sum3_din,
        l_sum3_num_data_valid => ap_const_lv2_0,
        l_sum3_fifo_cap => ap_const_lv2_0,
        l_sum3_full_n => l_sum3_full_n,
        l_sum3_write => merge_U0_l_sum3_write,
        l_sum_0_dout => l_sum_0_dout,
        l_sum_0_num_data_valid => l_sum_0_num_data_valid,
        l_sum_0_fifo_cap => l_sum_0_fifo_cap,
        l_sum_0_empty_n => l_sum_0_empty_n,
        l_sum_0_read => merge_U0_l_sum_0_read,
        l_sum_1_dout => l_sum_1_dout,
        l_sum_1_num_data_valid => l_sum_1_num_data_valid,
        l_sum_1_fifo_cap => l_sum_1_fifo_cap,
        l_sum_1_empty_n => l_sum_1_empty_n,
        l_sum_1_read => merge_U0_l_sum_1_read);

    l_aStr_U : component cemit_replaced_fifo_w66_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => tagAB_U0_l_aStr1_din,
        if_full_n => l_aStr_full_n,
        if_write => tagAB_U0_l_aStr1_write,
        if_dout => l_aStr_dout,
        if_num_data_valid => l_aStr_num_data_valid,
        if_fifo_cap => l_aStr_fifo_cap,
        if_empty_n => l_aStr_empty_n,
        if_read => systolicArray_U0_l_aStr1_read);

    l_bStr_U : component cemit_replaced_fifo_w64_d2_S_x0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => tagAB_U0_l_bStr2_din,
        if_full_n => l_bStr_full_n,
        if_write => tagAB_U0_l_bStr2_write,
        if_dout => l_bStr_dout,
        if_num_data_valid => l_bStr_num_data_valid,
        if_fifo_cap => l_bStr_fifo_cap,
        if_empty_n => l_bStr_empty_n,
        if_read => systolicArray_U0_l_bStr2_read);

    l_dataA_0_U : component cemit_replaced_fifo_w34_d4_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => systolicArray_U0_l_dataA_0_din,
        if_full_n => l_dataA_0_full_n,
        if_write => systolicArray_U0_l_dataA_0_write,
        if_dout => l_dataA_0_dout,
        if_num_data_valid => l_dataA_0_num_data_valid,
        if_fifo_cap => l_dataA_0_fifo_cap,
        if_empty_n => l_dataA_0_empty_n,
        if_read => macs_U0_l_dataA_0_read);

    l_dataA_1_U : component cemit_replaced_fifo_w34_d4_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => systolicArray_U0_l_dataA_1_din,
        if_full_n => l_dataA_1_full_n,
        if_write => systolicArray_U0_l_dataA_1_write,
        if_dout => l_dataA_1_dout,
        if_num_data_valid => l_dataA_1_num_data_valid,
        if_fifo_cap => l_dataA_1_fifo_cap,
        if_empty_n => l_dataA_1_empty_n,
        if_read => macs_1_U0_l_dataA_1_read);

    l_dataB_0_U : component cemit_replaced_fifo_w64_d4_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => systolicArray_U0_l_dataB_0_din,
        if_full_n => l_dataB_0_full_n,
        if_write => systolicArray_U0_l_dataB_0_write,
        if_dout => l_dataB_0_dout,
        if_num_data_valid => l_dataB_0_num_data_valid,
        if_fifo_cap => l_dataB_0_fifo_cap,
        if_empty_n => l_dataB_0_empty_n,
        if_read => macs_U0_l_dataB_0_read);

    l_dataB_1_U : component cemit_replaced_fifo_w64_d2_S_x0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => macs_U0_l_dataB_1_din,
        if_full_n => l_dataB_1_full_n,
        if_write => macs_U0_l_dataB_1_write,
        if_dout => l_dataB_1_dout,
        if_num_data_valid => l_dataB_1_num_data_valid,
        if_fifo_cap => l_dataB_1_fifo_cap,
        if_empty_n => l_dataB_1_empty_n,
        if_read => macs_1_U0_l_dataB_1_read);

    l_sum_0_U : component cemit_replaced_fifo_w64_d2_S_x0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => macs_U0_l_sum_0_din,
        if_full_n => l_sum_0_full_n,
        if_write => macs_U0_l_sum_0_write,
        if_dout => l_sum_0_dout,
        if_num_data_valid => l_sum_0_num_data_valid,
        if_fifo_cap => l_sum_0_fifo_cap,
        if_empty_n => l_sum_0_empty_n,
        if_read => merge_U0_l_sum_0_read);

    l_sum_1_U : component cemit_replaced_fifo_w64_d2_S_x0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => macs_1_U0_l_sum_1_din,
        if_full_n => l_sum_1_full_n,
        if_write => macs_1_U0_l_sum_1_write,
        if_dout => l_sum_1_dout,
        if_num_data_valid => l_sum_1_num_data_valid,
        if_fifo_cap => l_sum_1_fifo_cap,
        if_empty_n => l_sum_1_empty_n,
        if_read => merge_U0_l_sum_1_read);

    start_for_systolicArray_U0_U : component cemit_replaced_start_for_systolicArray_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_systolicArray_U0_din,
        if_full_n => start_for_systolicArray_U0_full_n,
        if_write => tagAB_U0_start_write,
        if_dout => start_for_systolicArray_U0_dout,
        if_empty_n => start_for_systolicArray_U0_empty_n,
        if_read => systolicArray_U0_ap_ready);

    start_for_macs_U0_U : component cemit_replaced_start_for_macs_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_macs_U0_din,
        if_full_n => start_for_macs_U0_full_n,
        if_write => systolicArray_U0_start_write,
        if_dout => start_for_macs_U0_dout,
        if_empty_n => start_for_macs_U0_empty_n,
        if_read => macs_U0_ap_ready);

    start_for_macs_1_U0_U : component cemit_replaced_start_for_macs_1_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_macs_1_U0_din,
        if_full_n => start_for_macs_1_U0_full_n,
        if_write => systolicArray_U0_start_write,
        if_dout => start_for_macs_1_U0_dout,
        if_empty_n => start_for_macs_1_U0_empty_n,
        if_read => macs_1_U0_ap_ready);

    start_for_merge_U0_U : component cemit_replaced_start_for_merge_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_merge_U0_din,
        if_full_n => start_for_merge_U0_full_n,
        if_write => macs_U0_start_write,
        if_dout => start_for_merge_U0_dout,
        if_empty_n => start_for_merge_U0_empty_n,
        if_read => merge_U0_ap_ready);




    ap_done <= merge_U0_ap_done;
    ap_idle <= (tagAB_U0_ap_idle and systolicArray_U0_ap_idle and merge_U0_ap_idle and macs_U0_ap_idle and macs_1_U0_ap_idle);
    ap_ready <= tagAB_U0_ap_ready;
    l_strA7_read <= tagAB_U0_l_strA7_read;
    l_strB8_read <= tagAB_U0_l_strB8_read;
    l_sum3_din <= merge_U0_l_sum3_din;
    l_sum3_write <= merge_U0_l_sum3_write;
    macs_1_U0_ap_continue <= ap_const_logic_1;
    macs_1_U0_ap_start <= start_for_macs_1_U0_empty_n;
    macs_U0_ap_continue <= ap_const_logic_1;
    macs_U0_ap_start <= start_for_macs_U0_empty_n;
    merge_U0_ap_continue <= ap_continue;
    merge_U0_ap_start <= start_for_merge_U0_empty_n;
    start_for_macs_1_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_macs_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_merge_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_systolicArray_U0_din <= (0=>ap_const_logic_1, others=>'-');
    systolicArray_U0_ap_continue <= ap_const_logic_1;
    systolicArray_U0_ap_start <= start_for_systolicArray_U0_empty_n;
    systolicArray_U0_start_full_n <= (start_for_macs_U0_full_n and start_for_macs_1_U0_full_n);
    tagAB_U0_ap_continue <= ap_const_logic_1;
    tagAB_U0_ap_start <= ap_start;
end behav;
