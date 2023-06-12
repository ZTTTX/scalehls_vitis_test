-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cemit_replaced_macs_1 is
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
end;


architecture behav of cemit_replaced_macs_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal muls_2_U0_ap_start : STD_LOGIC;
    signal muls_2_U0_ap_done : STD_LOGIC;
    signal muls_2_U0_ap_continue : STD_LOGIC;
    signal muls_2_U0_ap_idle : STD_LOGIC;
    signal muls_2_U0_ap_ready : STD_LOGIC;
    signal muls_2_U0_start_out : STD_LOGIC;
    signal muls_2_U0_start_write : STD_LOGIC;
    signal muls_2_U0_l_dataA_1_read : STD_LOGIC;
    signal muls_2_U0_l_dataB_1_read : STD_LOGIC;
    signal muls_2_U0_l_mul1_din : STD_LOGIC_VECTOR (63 downto 0);
    signal muls_2_U0_l_mul1_write : STD_LOGIC;
    signal adds_3_U0_ap_start : STD_LOGIC;
    signal adds_3_U0_ap_done : STD_LOGIC;
    signal adds_3_U0_ap_continue : STD_LOGIC;
    signal adds_3_U0_ap_idle : STD_LOGIC;
    signal adds_3_U0_ap_ready : STD_LOGIC;
    signal adds_3_U0_l_mul1_read : STD_LOGIC;
    signal adds_3_U0_l_sum_1_din : STD_LOGIC_VECTOR (63 downto 0);
    signal adds_3_U0_l_sum_1_write : STD_LOGIC;
    signal l_mul_full_n : STD_LOGIC;
    signal l_mul_dout : STD_LOGIC_VECTOR (63 downto 0);
    signal l_mul_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal l_mul_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal l_mul_empty_n : STD_LOGIC;
    signal start_for_adds_3_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_adds_3_U0_full_n : STD_LOGIC;
    signal start_for_adds_3_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_adds_3_U0_empty_n : STD_LOGIC;

    component cemit_replaced_muls_2 IS
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
        l_dataA_1_dout : IN STD_LOGIC_VECTOR (33 downto 0);
        l_dataA_1_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
        l_dataA_1_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
        l_dataA_1_empty_n : IN STD_LOGIC;
        l_dataA_1_read : OUT STD_LOGIC;
        l_dataB_1_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        l_dataB_1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        l_dataB_1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        l_dataB_1_empty_n : IN STD_LOGIC;
        l_dataB_1_read : OUT STD_LOGIC;
        l_mul1_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        l_mul1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        l_mul1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        l_mul1_full_n : IN STD_LOGIC;
        l_mul1_write : OUT STD_LOGIC );
    end component;


    component cemit_replaced_adds_3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        l_mul1_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        l_mul1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        l_mul1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        l_mul1_empty_n : IN STD_LOGIC;
        l_mul1_read : OUT STD_LOGIC;
        l_sum_1_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        l_sum_1_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        l_sum_1_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        l_sum_1_full_n : IN STD_LOGIC;
        l_sum_1_write : OUT STD_LOGIC );
    end component;


    component cemit_replaced_fifo_w64_d2_S_x IS
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


    component cemit_replaced_start_for_adds_3_U0 IS
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
    muls_2_U0 : component cemit_replaced_muls_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => muls_2_U0_ap_start,
        start_full_n => start_for_adds_3_U0_full_n,
        ap_done => muls_2_U0_ap_done,
        ap_continue => muls_2_U0_ap_continue,
        ap_idle => muls_2_U0_ap_idle,
        ap_ready => muls_2_U0_ap_ready,
        start_out => muls_2_U0_start_out,
        start_write => muls_2_U0_start_write,
        l_dataA_1_dout => l_dataA_1_dout,
        l_dataA_1_num_data_valid => ap_const_lv3_0,
        l_dataA_1_fifo_cap => ap_const_lv3_0,
        l_dataA_1_empty_n => l_dataA_1_empty_n,
        l_dataA_1_read => muls_2_U0_l_dataA_1_read,
        l_dataB_1_dout => l_dataB_1_dout,
        l_dataB_1_num_data_valid => ap_const_lv2_0,
        l_dataB_1_fifo_cap => ap_const_lv2_0,
        l_dataB_1_empty_n => l_dataB_1_empty_n,
        l_dataB_1_read => muls_2_U0_l_dataB_1_read,
        l_mul1_din => muls_2_U0_l_mul1_din,
        l_mul1_num_data_valid => l_mul_num_data_valid,
        l_mul1_fifo_cap => l_mul_fifo_cap,
        l_mul1_full_n => l_mul_full_n,
        l_mul1_write => muls_2_U0_l_mul1_write);

    adds_3_U0 : component cemit_replaced_adds_3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => adds_3_U0_ap_start,
        ap_done => adds_3_U0_ap_done,
        ap_continue => adds_3_U0_ap_continue,
        ap_idle => adds_3_U0_ap_idle,
        ap_ready => adds_3_U0_ap_ready,
        l_mul1_dout => l_mul_dout,
        l_mul1_num_data_valid => l_mul_num_data_valid,
        l_mul1_fifo_cap => l_mul_fifo_cap,
        l_mul1_empty_n => l_mul_empty_n,
        l_mul1_read => adds_3_U0_l_mul1_read,
        l_sum_1_din => adds_3_U0_l_sum_1_din,
        l_sum_1_num_data_valid => ap_const_lv2_0,
        l_sum_1_fifo_cap => ap_const_lv2_0,
        l_sum_1_full_n => l_sum_1_full_n,
        l_sum_1_write => adds_3_U0_l_sum_1_write);

    l_mul_U : component cemit_replaced_fifo_w64_d2_S_x
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => muls_2_U0_l_mul1_din,
        if_full_n => l_mul_full_n,
        if_write => muls_2_U0_l_mul1_write,
        if_dout => l_mul_dout,
        if_num_data_valid => l_mul_num_data_valid,
        if_fifo_cap => l_mul_fifo_cap,
        if_empty_n => l_mul_empty_n,
        if_read => adds_3_U0_l_mul1_read);

    start_for_adds_3_U0_U : component cemit_replaced_start_for_adds_3_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_adds_3_U0_din,
        if_full_n => start_for_adds_3_U0_full_n,
        if_write => muls_2_U0_start_write,
        if_dout => start_for_adds_3_U0_dout,
        if_empty_n => start_for_adds_3_U0_empty_n,
        if_read => adds_3_U0_ap_ready);




    adds_3_U0_ap_continue <= ap_continue;
    adds_3_U0_ap_start <= start_for_adds_3_U0_empty_n;
    ap_done <= adds_3_U0_ap_done;
    ap_idle <= (muls_2_U0_ap_idle and adds_3_U0_ap_idle);
    ap_ready <= muls_2_U0_ap_ready;
    l_dataA_1_read <= muls_2_U0_l_dataA_1_read;
    l_dataB_1_read <= muls_2_U0_l_dataB_1_read;
    l_sum_1_din <= adds_3_U0_l_sum_1_din;
    l_sum_1_write <= adds_3_U0_l_sum_1_write;
    muls_2_U0_ap_continue <= ap_const_logic_1;
    muls_2_U0_ap_start <= ap_start;
    start_for_adds_3_U0_din <= (0=>ap_const_logic_1, others=>'-');
end behav;
