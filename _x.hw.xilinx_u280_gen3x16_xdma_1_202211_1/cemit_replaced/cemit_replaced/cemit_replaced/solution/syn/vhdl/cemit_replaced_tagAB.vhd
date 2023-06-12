-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cemit_replaced_tagAB is
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
    l_strA4_i_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    l_strA4_i_empty_n : IN STD_LOGIC;
    l_strA4_i_read : OUT STD_LOGIC;
    l_strB5_i_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    l_strB5_i_empty_n : IN STD_LOGIC;
    l_strB5_i_read : OUT STD_LOGIC;
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
end;


architecture behav of cemit_replaced_tagAB is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_start : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_done : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_idle : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_ready : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_strA4_i_read : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_strB5_i_read : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_aStr1_din : STD_LOGIC_VECTOR (65 downto 0);
    signal grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_aStr1_write : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_bStr2_din : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_bStr2_write : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_start : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_done : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_idle : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_ready : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_aStr1_din : STD_LOGIC_VECTOR (65 downto 0);
    signal grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_aStr1_write : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_bStr2_din : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_bStr2_write : STD_LOGIC;
    signal grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_start_reg : STD_LOGIC := '0';
    signal ap_block_state1_ignore_call5 : BOOLEAN;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component cemit_replaced_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        l_strA4_i_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        l_strA4_i_empty_n : IN STD_LOGIC;
        l_strA4_i_read : OUT STD_LOGIC;
        l_strB5_i_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        l_strB5_i_empty_n : IN STD_LOGIC;
        l_strB5_i_read : OUT STD_LOGIC;
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


    component cemit_replaced_tagAB_Pipeline_VITIS_LOOP_283_3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
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



begin
    grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24 : component cemit_replaced_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_start,
        ap_done => grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_done,
        ap_idle => grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_idle,
        ap_ready => grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_ready,
        l_strA4_i_dout => l_strA4_i_dout,
        l_strA4_i_empty_n => l_strA4_i_empty_n,
        l_strA4_i_read => grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_strA4_i_read,
        l_strB5_i_dout => l_strB5_i_dout,
        l_strB5_i_empty_n => l_strB5_i_empty_n,
        l_strB5_i_read => grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_strB5_i_read,
        l_aStr1_din => grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_aStr1_din,
        l_aStr1_num_data_valid => ap_const_lv2_0,
        l_aStr1_fifo_cap => ap_const_lv2_0,
        l_aStr1_full_n => l_aStr1_full_n,
        l_aStr1_write => grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_aStr1_write,
        l_bStr2_din => grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_bStr2_din,
        l_bStr2_num_data_valid => ap_const_lv2_0,
        l_bStr2_fifo_cap => ap_const_lv2_0,
        l_bStr2_full_n => l_bStr2_full_n,
        l_bStr2_write => grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_bStr2_write);

    grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36 : component cemit_replaced_tagAB_Pipeline_VITIS_LOOP_283_3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_start,
        ap_done => grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_done,
        ap_idle => grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_idle,
        ap_ready => grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_ready,
        l_aStr1_din => grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_aStr1_din,
        l_aStr1_num_data_valid => ap_const_lv2_0,
        l_aStr1_fifo_cap => ap_const_lv2_0,
        l_aStr1_full_n => l_aStr1_full_n,
        l_aStr1_write => grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_aStr1_write,
        l_bStr2_din => grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_bStr2_din,
        l_bStr2_num_data_valid => ap_const_lv2_0,
        l_bStr2_fifo_cap => ap_const_lv2_0,
        l_bStr2_full_n => l_bStr2_full_n,
        l_bStr2_write => grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_bStr2_write);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_start_reg <= ap_const_logic_0;
            else
                if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_ready = ap_const_logic_1)) then 
                    grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_ready = ap_const_logic_1)) then 
                    grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_done, grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_done, ap_CS_fsm_state2, ap_CS_fsm_state5)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_ST_fsm_state1_blk_assign_proc : process(real_start, ap_done_reg)
    begin
        if (((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_done)
    begin
        if ((grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;

    ap_ST_fsm_state5_blk_assign_proc : process(grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_done)
    begin
        if ((grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state5_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state5_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0));
    end process;


    ap_block_state1_ignore_call5_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1_ignore_call5 <= ((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_done, ap_CS_fsm_state5)
    begin
        if (((grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (real_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_start <= grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_ap_start_reg;
    grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_start <= grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_start_reg;

    internal_ap_ready_assign_proc : process(grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_done, ap_CS_fsm_state5)
    begin
        if (((grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    l_aStr1_din_assign_proc : process(grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_aStr1_din, grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_aStr1_din, ap_CS_fsm_state2, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            l_aStr1_din <= grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_aStr1_din;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            l_aStr1_din <= grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_aStr1_din;
        else 
            l_aStr1_din <= grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_aStr1_din;
        end if; 
    end process;


    l_aStr1_write_assign_proc : process(grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_aStr1_write, grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_aStr1_write, ap_CS_fsm_state2, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            l_aStr1_write <= grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_aStr1_write;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            l_aStr1_write <= grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_aStr1_write;
        else 
            l_aStr1_write <= ap_const_logic_0;
        end if; 
    end process;


    l_bStr2_din_assign_proc : process(grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_bStr2_din, grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_bStr2_din, ap_CS_fsm_state2, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            l_bStr2_din <= grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_bStr2_din;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            l_bStr2_din <= grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_bStr2_din;
        else 
            l_bStr2_din <= grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_bStr2_din;
        end if; 
    end process;


    l_bStr2_write_assign_proc : process(grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_bStr2_write, grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_bStr2_write, ap_CS_fsm_state2, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            l_bStr2_write <= grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36_l_bStr2_write;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            l_bStr2_write <= grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_bStr2_write;
        else 
            l_bStr2_write <= ap_const_logic_0;
        end if; 
    end process;


    l_strA4_i_read_assign_proc : process(grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_strA4_i_read, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            l_strA4_i_read <= grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_strA4_i_read;
        else 
            l_strA4_i_read <= ap_const_logic_0;
        end if; 
    end process;


    l_strB5_i_read_assign_proc : process(grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_strB5_i_read, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            l_strB5_i_read <= grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24_l_strB5_i_read;
        else 
            l_strB5_i_read <= ap_const_logic_0;
        end if; 
    end process;


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