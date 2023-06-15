# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cemit_replaced_systolicArray_l_Tb_m_Sreg_Array_SHIFTREG_AUTO_0R0W BINDTYPE {storage} TYPE {shiftreg} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name l_aStr1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_aStr1 \
    op interface \
    ports { l_aStr1_dout { I 66 vector } l_aStr1_num_data_valid { I 2 vector } l_aStr1_fifo_cap { I 2 vector } l_aStr1_empty_n { I 1 bit } l_aStr1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name l_bStr2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_bStr2 \
    op interface \
    ports { l_bStr2_dout { I 64 vector } l_bStr2_num_data_valid { I 2 vector } l_bStr2_fifo_cap { I 2 vector } l_bStr2_empty_n { I 1 bit } l_bStr2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name l_dataA_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_l_dataA_0 \
    op interface \
    ports { l_dataA_0_din { O 34 vector } l_dataA_0_num_data_valid { I 3 vector } l_dataA_0_fifo_cap { I 3 vector } l_dataA_0_full_n { I 1 bit } l_dataA_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name l_dataA_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_l_dataA_1 \
    op interface \
    ports { l_dataA_1_din { O 34 vector } l_dataA_1_num_data_valid { I 3 vector } l_dataA_1_fifo_cap { I 3 vector } l_dataA_1_full_n { I 1 bit } l_dataA_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name l_dataB_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_l_dataB_0 \
    op interface \
    ports { l_dataB_0_din { O 64 vector } l_dataB_0_num_data_valid { I 3 vector } l_dataB_0_fifo_cap { I 3 vector } l_dataB_0_full_n { I 1 bit } l_dataB_0_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


