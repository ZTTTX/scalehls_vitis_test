set SynModuleInfo {
  {SRCNAME forward_Pipeline_VITIS_LOOP_60_1 MODELNAME forward_Pipeline_VITIS_LOOP_60_1 RTLNAME forward_forward_Pipeline_VITIS_LOOP_60_1
    SUBMODULES {
      {MODELNAME forward_flow_control_loop_pipe_sequential_init RTLNAME forward_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME forward_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME forward_Pipeline_VITIS_LOOP_44_3 MODELNAME forward_Pipeline_VITIS_LOOP_44_3 RTLNAME forward_forward_Pipeline_VITIS_LOOP_44_3
    SUBMODULES {
      {MODELNAME forward_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME forward_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME forward_Pipeline_VITIS_LOOP_26_2 MODELNAME forward_Pipeline_VITIS_LOOP_26_2 RTLNAME forward_forward_Pipeline_VITIS_LOOP_26_2
    SUBMODULES {
      {MODELNAME forward_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME forward_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME forward_forward_Pipeline_VITIS_LOOP_26_2_v28_RAM_T2P_BRAM_1R1W RTLNAME forward_forward_Pipeline_VITIS_LOOP_26_2_v28_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME forward MODELNAME forward RTLNAME forward IS_TOP 1
    SUBMODULES {
      {MODELNAME forward_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME forward_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME forward_v29_RAM_T2P_BRAM_1R1W RTLNAME forward_v29_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME forward_v30_RAM_T2P_BRAM_1R1W RTLNAME forward_v30_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME forward_gmem_m_axi RTLNAME forward_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME forward_ctrl_s_axi RTLNAME forward_ctrl_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
