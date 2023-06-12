-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cemit_replaced_gemm is
port (
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    l_strA4_i_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    l_strA4_i_empty_n : IN STD_LOGIC;
    l_strA4_i_read : OUT STD_LOGIC;
    l_strB5_i_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    l_strB5_i_empty_n : IN STD_LOGIC;
    l_strB5_i_read : OUT STD_LOGIC;
    l_sum3_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    l_sum3_full_n : IN STD_LOGIC;
    l_sum3_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of cemit_replaced_gemm is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal internal_ap_ready : STD_LOGIC;
    signal process_U0_l_strA4_i_read : STD_LOGIC;
    signal process_U0_l_strB5_i_read : STD_LOGIC;
    signal process_U0_l_sum3_din : STD_LOGIC_VECTOR (63 downto 0);
    signal process_U0_l_sum3_write : STD_LOGIC;
    signal process_U0_ap_start : STD_LOGIC;
    signal process_U0_ap_done : STD_LOGIC;
    signal process_U0_ap_ready : STD_LOGIC;
    signal process_U0_ap_idle : STD_LOGIC;
    signal process_U0_ap_continue : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component cemit_replaced_process_r IS
    port (
        l_strA4_i_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        l_strA4_i_empty_n : IN STD_LOGIC;
        l_strA4_i_read : OUT STD_LOGIC;
        l_strB5_i_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        l_strB5_i_empty_n : IN STD_LOGIC;
        l_strB5_i_read : OUT STD_LOGIC;
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
    end component;



begin
    process_U0 : component cemit_replaced_process_r
    port map (
        l_strA4_i_dout => l_strA4_i_dout,
        l_strA4_i_empty_n => l_strA4_i_empty_n,
        l_strA4_i_read => process_U0_l_strA4_i_read,
        l_strB5_i_dout => l_strB5_i_dout,
        l_strB5_i_empty_n => l_strB5_i_empty_n,
        l_strB5_i_read => process_U0_l_strB5_i_read,
        l_sum3_din => process_U0_l_sum3_din,
        l_sum3_full_n => l_sum3_full_n,
        l_sum3_write => process_U0_l_sum3_write,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => process_U0_ap_start,
        ap_done => process_U0_ap_done,
        ap_ready => process_U0_ap_ready,
        ap_idle => process_U0_ap_idle,
        ap_continue => process_U0_ap_continue);





    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((real_start = ap_const_logic_1) and (internal_ap_ready = ap_const_logic_0))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    ap_done <= process_U0_ap_done;
    ap_idle <= process_U0_ap_idle;
    ap_ready <= process_U0_ap_ready;
    ap_sync_ready <= process_U0_ap_ready;
    internal_ap_ready <= ap_sync_ready;
    l_strA4_i_read <= process_U0_l_strA4_i_read;
    l_strB5_i_read <= process_U0_l_strB5_i_read;
    l_sum3_din <= process_U0_l_sum3_din;
    l_sum3_write <= process_U0_l_sum3_write;
    process_U0_ap_continue <= ap_continue;
    process_U0_ap_start <= real_start;

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;