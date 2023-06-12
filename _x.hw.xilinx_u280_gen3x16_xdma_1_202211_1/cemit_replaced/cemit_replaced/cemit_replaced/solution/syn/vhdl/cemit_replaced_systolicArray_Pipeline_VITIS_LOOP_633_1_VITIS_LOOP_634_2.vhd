-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cemit_replaced_systolicArray_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    l_Tb_m_Sreg_Array_1_address0 : OUT STD_LOGIC_VECTOR (0 downto 0);
    l_Tb_m_Sreg_Array_1_ce0 : OUT STD_LOGIC;
    l_Tb_m_Sreg_Array_1_we0 : OUT STD_LOGIC;
    l_Tb_m_Sreg_Array_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    l_Tb_m_Sreg_Array_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    l_Tb_m_Sreg_Array_address0 : OUT STD_LOGIC_VECTOR (0 downto 0);
    l_Tb_m_Sreg_Array_ce0 : OUT STD_LOGIC;
    l_Tb_m_Sreg_Array_we0 : OUT STD_LOGIC;
    l_Tb_m_Sreg_Array_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    l_Tb_m_Sreg_Array_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of cemit_replaced_systolicArray_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln633_fu_93_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal col_fu_44 : STD_LOGIC_VECTOR (1 downto 0);
    signal col_3_fu_158_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_col_2 : STD_LOGIC_VECTOR (1 downto 0);
    signal row_fu_48 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln633_fu_120_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_allocacmp_row_load : STD_LOGIC_VECTOR (1 downto 0);
    signal indvar_flatten_fu_52 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln633_1_fu_99_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln633_fu_128_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln634_fu_114_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln633_fu_108_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln634_fu_152_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component cemit_replaced_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component cemit_replaced_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





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
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    col_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if ((icmp_ln633_fu_93_p2 = ap_const_lv1_0)) then 
                    col_fu_44 <= col_3_fu_158_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    col_fu_44 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_52_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if ((icmp_ln633_fu_93_p2 = ap_const_lv1_0)) then 
                    indvar_flatten_fu_52 <= add_ln633_1_fu_99_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_52 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;

    row_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                if ((icmp_ln633_fu_93_p2 = ap_const_lv1_0)) then 
                    row_fu_48 <= select_ln633_fu_120_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    row_fu_48 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln633_1_fu_99_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv3_1));
    add_ln633_fu_108_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_row_load) + unsigned(ap_const_lv2_1));
    add_ln634_fu_152_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_col_2) + unsigned(ap_const_lv2_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, icmp_ln633_fu_93_p2, ap_start_int)
    begin
        if (((icmp_ln633_fu_93_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_col_2_assign_proc : process(ap_CS_fsm_state1, col_fu_44, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_col_2 <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_col_2 <= col_fu_44;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_state1, ap_loop_init, indvar_flatten_fu_52)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_52;
        end if; 
    end process;


    ap_sig_allocacmp_row_load_assign_proc : process(ap_CS_fsm_state1, ap_loop_init, row_fu_48)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_row_load <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_row_load <= row_fu_48;
        end if; 
    end process;

    col_3_fu_158_p3 <= 
        ap_const_lv2_1 when (icmp_ln634_fu_114_p2(0) = '1') else 
        add_ln634_fu_152_p2;
    icmp_ln633_fu_93_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv3_4) else "0";
    icmp_ln634_fu_114_p2 <= "1" when (ap_sig_allocacmp_col_2 = ap_const_lv2_2) else "0";
    l_Tb_m_Sreg_Array_1_address0 <= ap_const_lv64_0(1 - 1 downto 0);

    l_Tb_m_Sreg_Array_1_ce0_assign_proc : process(ap_CS_fsm_state1, icmp_ln633_fu_93_p2, trunc_ln633_fu_128_p1, ap_start_int)
    begin
        if (((trunc_ln633_fu_128_p1 = ap_const_lv1_1) and (icmp_ln633_fu_93_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            l_Tb_m_Sreg_Array_1_ce0 <= ap_const_logic_1;
        else 
            l_Tb_m_Sreg_Array_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    l_Tb_m_Sreg_Array_1_d0 <= ap_const_lv32_0;

    l_Tb_m_Sreg_Array_1_we0_assign_proc : process(ap_CS_fsm_state1, icmp_ln633_fu_93_p2, trunc_ln633_fu_128_p1, ap_start_int)
    begin
        if (((trunc_ln633_fu_128_p1 = ap_const_lv1_1) and (icmp_ln633_fu_93_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            l_Tb_m_Sreg_Array_1_we0 <= ap_const_logic_1;
        else 
            l_Tb_m_Sreg_Array_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    l_Tb_m_Sreg_Array_address0 <= ap_const_lv64_0(1 - 1 downto 0);

    l_Tb_m_Sreg_Array_ce0_assign_proc : process(ap_CS_fsm_state1, icmp_ln633_fu_93_p2, trunc_ln633_fu_128_p1, ap_start_int)
    begin
        if (((trunc_ln633_fu_128_p1 = ap_const_lv1_0) and (icmp_ln633_fu_93_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            l_Tb_m_Sreg_Array_ce0 <= ap_const_logic_1;
        else 
            l_Tb_m_Sreg_Array_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    l_Tb_m_Sreg_Array_d0 <= ap_const_lv32_0;

    l_Tb_m_Sreg_Array_we0_assign_proc : process(ap_CS_fsm_state1, icmp_ln633_fu_93_p2, trunc_ln633_fu_128_p1, ap_start_int)
    begin
        if (((trunc_ln633_fu_128_p1 = ap_const_lv1_0) and (icmp_ln633_fu_93_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            l_Tb_m_Sreg_Array_we0 <= ap_const_logic_1;
        else 
            l_Tb_m_Sreg_Array_we0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln633_fu_120_p3 <= 
        add_ln633_fu_108_p2 when (icmp_ln634_fu_114_p2(0) = '1') else 
        ap_sig_allocacmp_row_load;
    trunc_ln633_fu_128_p1 <= select_ln633_fu_120_p3(1 - 1 downto 0);
end behav;
