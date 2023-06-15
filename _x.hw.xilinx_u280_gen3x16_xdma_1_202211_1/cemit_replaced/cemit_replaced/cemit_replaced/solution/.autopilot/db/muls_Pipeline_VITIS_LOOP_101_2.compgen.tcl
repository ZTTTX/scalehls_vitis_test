# This script segment is generated automatically by AutoPilot

set name cemit_replaced_fmul_32ns_32ns_32_4_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 3 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name l_Tc_m_Sreg_Array_2 \
    reset_level 1 \
    sync_rst true \
    dir X \
    corename l_Tc_m_Sreg_Array_2 \
    op interface \
    ports { l_Tc_m_Sreg_Array_2_address0 { O 1 vector } l_Tc_m_Sreg_Array_2_ce0 { O 1 bit } l_Tc_m_Sreg_Array_2_we0 { O 1 bit } l_Tc_m_Sreg_Array_2_d0 { O 32 vector } l_Tc_m_Sreg_Array_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'l_Tc_m_Sreg_Array_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name l_Tc_m_Sreg_Array \
    reset_level 1 \
    sync_rst true \
    dir X \
    corename l_Tc_m_Sreg_Array \
    op interface \
    ports { l_Tc_m_Sreg_Array_address0 { O 1 vector } l_Tc_m_Sreg_Array_ce0 { O 1 bit } l_Tc_m_Sreg_Array_we0 { O 1 bit } l_Tc_m_Sreg_Array_d0 { O 32 vector } l_Tc_m_Sreg_Array_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'l_Tc_m_Sreg_Array'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name l_flush_Array \
    reset_level 1 \
    sync_rst true \
    dir X \
    corename l_flush_Array \
    op interface \
    ports { l_flush_Array_address0 { O 1 vector } l_flush_Array_ce0 { O 1 bit } l_flush_Array_we0 { O 1 bit } l_flush_Array_d0 { O 1 vector } l_flush_Array_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'l_flush_Array'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name l_dataA_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_dataA_0 \
    op interface \
    ports { l_dataA_0_dout { I 34 vector } l_dataA_0_num_data_valid { I 3 vector } l_dataA_0_fifo_cap { I 3 vector } l_dataA_0_empty_n { I 1 bit } l_dataA_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name l_dataB_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_dataB_0 \
    op interface \
    ports { l_dataB_0_dout { I 64 vector } l_dataB_0_num_data_valid { I 3 vector } l_dataB_0_fifo_cap { I 3 vector } l_dataB_0_empty_n { I 1 bit } l_dataB_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name l_dataB_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_l_dataB_1 \
    op interface \
    ports { l_dataB_1_din { O 64 vector } l_dataB_1_num_data_valid { I 2 vector } l_dataB_1_fifo_cap { I 2 vector } l_dataB_1_full_n { I 1 bit } l_dataB_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name l_mul1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_l_mul1 \
    op interface \
    ports { l_mul1_din { O 64 vector } l_mul1_num_data_valid { I 2 vector } l_mul1_fifo_cap { I 2 vector } l_mul1_full_n { I 1 bit } l_mul1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName cemit_replaced_flow_control_loop_pipe_sequential_init_U
set CompName cemit_replaced_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix cemit_replaced_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


