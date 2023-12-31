set moduleName muls_Pipeline_VITIS_LOOP_101_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {muls_Pipeline_VITIS_LOOP_101_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ l_Tc_m_Sreg_Array_2 float 32 regular {array 2 { 2 } 0 1 }  }
	{ l_Tc_m_Sreg_Array float 32 regular {array 2 { 2 } 0 1 }  }
	{ l_flush_Array int 1 regular {array 2 { 2 } 0 1 }  }
	{ l_dataA_0 int 34 regular {fifo 0 volatile }  }
	{ l_dataB_0 int 64 regular {fifo 0 volatile }  }
	{ l_dataB_1 int 64 regular {fifo 1 volatile }  }
	{ l_mul1 int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l_Tc_m_Sreg_Array_2", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "l_Tc_m_Sreg_Array", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "l_flush_Array", "interface" : "memory", "bitwidth" : 1, "direction" : "NONE"} , 
 	{ "Name" : "l_dataA_0", "interface" : "fifo", "bitwidth" : 34, "direction" : "READONLY"} , 
 	{ "Name" : "l_dataB_0", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_dataB_1", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "l_mul1", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l_dataA_0_dout sc_in sc_lv 34 signal 3 } 
	{ l_dataA_0_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ l_dataA_0_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ l_dataA_0_empty_n sc_in sc_logic 1 signal 3 } 
	{ l_dataA_0_read sc_out sc_logic 1 signal 3 } 
	{ l_dataB_0_dout sc_in sc_lv 64 signal 4 } 
	{ l_dataB_0_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ l_dataB_0_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ l_dataB_0_empty_n sc_in sc_logic 1 signal 4 } 
	{ l_dataB_0_read sc_out sc_logic 1 signal 4 } 
	{ l_dataB_1_din sc_out sc_lv 64 signal 5 } 
	{ l_dataB_1_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ l_dataB_1_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ l_dataB_1_full_n sc_in sc_logic 1 signal 5 } 
	{ l_dataB_1_write sc_out sc_logic 1 signal 5 } 
	{ l_mul1_din sc_out sc_lv 64 signal 6 } 
	{ l_mul1_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ l_mul1_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ l_mul1_full_n sc_in sc_logic 1 signal 6 } 
	{ l_mul1_write sc_out sc_logic 1 signal 6 } 
	{ l_Tc_m_Sreg_Array_2_address0 sc_out sc_lv 1 signal 0 } 
	{ l_Tc_m_Sreg_Array_2_ce0 sc_out sc_logic 1 signal 0 } 
	{ l_Tc_m_Sreg_Array_2_we0 sc_out sc_logic 1 signal 0 } 
	{ l_Tc_m_Sreg_Array_2_d0 sc_out sc_lv 32 signal 0 } 
	{ l_Tc_m_Sreg_Array_2_q0 sc_in sc_lv 32 signal 0 } 
	{ l_Tc_m_Sreg_Array_address0 sc_out sc_lv 1 signal 1 } 
	{ l_Tc_m_Sreg_Array_ce0 sc_out sc_logic 1 signal 1 } 
	{ l_Tc_m_Sreg_Array_we0 sc_out sc_logic 1 signal 1 } 
	{ l_Tc_m_Sreg_Array_d0 sc_out sc_lv 32 signal 1 } 
	{ l_Tc_m_Sreg_Array_q0 sc_in sc_lv 32 signal 1 } 
	{ l_flush_Array_address0 sc_out sc_lv 1 signal 2 } 
	{ l_flush_Array_ce0 sc_out sc_logic 1 signal 2 } 
	{ l_flush_Array_we0 sc_out sc_logic 1 signal 2 } 
	{ l_flush_Array_d0 sc_out sc_lv 1 signal 2 } 
	{ l_flush_Array_q0 sc_in sc_lv 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l_dataA_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":34, "type": "signal", "bundle":{"name": "l_dataA_0", "role": "dout" }} , 
 	{ "name": "l_dataA_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_dataA_0", "role": "num_data_valid" }} , 
 	{ "name": "l_dataA_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_dataA_0", "role": "fifo_cap" }} , 
 	{ "name": "l_dataA_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataA_0", "role": "empty_n" }} , 
 	{ "name": "l_dataA_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataA_0", "role": "read" }} , 
 	{ "name": "l_dataB_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_dataB_0", "role": "dout" }} , 
 	{ "name": "l_dataB_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_dataB_0", "role": "num_data_valid" }} , 
 	{ "name": "l_dataB_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_dataB_0", "role": "fifo_cap" }} , 
 	{ "name": "l_dataB_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataB_0", "role": "empty_n" }} , 
 	{ "name": "l_dataB_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataB_0", "role": "read" }} , 
 	{ "name": "l_dataB_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_dataB_1", "role": "din" }} , 
 	{ "name": "l_dataB_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_dataB_1", "role": "num_data_valid" }} , 
 	{ "name": "l_dataB_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_dataB_1", "role": "fifo_cap" }} , 
 	{ "name": "l_dataB_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataB_1", "role": "full_n" }} , 
 	{ "name": "l_dataB_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataB_1", "role": "write" }} , 
 	{ "name": "l_mul1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_mul1", "role": "din" }} , 
 	{ "name": "l_mul1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_mul1", "role": "num_data_valid" }} , 
 	{ "name": "l_mul1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_mul1", "role": "fifo_cap" }} , 
 	{ "name": "l_mul1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_mul1", "role": "full_n" }} , 
 	{ "name": "l_mul1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_mul1", "role": "write" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array_2", "role": "address0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array_2", "role": "ce0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array_2", "role": "we0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array_2", "role": "d0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array_2", "role": "q0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array", "role": "address0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array", "role": "ce0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array", "role": "we0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array", "role": "d0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array", "role": "q0" }} , 
 	{ "name": "l_flush_Array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_flush_Array", "role": "address0" }} , 
 	{ "name": "l_flush_Array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_flush_Array", "role": "ce0" }} , 
 	{ "name": "l_flush_Array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_flush_Array", "role": "we0" }} , 
 	{ "name": "l_flush_Array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_flush_Array", "role": "d0" }} , 
 	{ "name": "l_flush_Array_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_flush_Array", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "muls_Pipeline_VITIS_LOOP_101_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_Tc_m_Sreg_Array_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "l_Tc_m_Sreg_Array", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "l_flush_Array", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "l_dataA_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "l_dataA_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_dataB_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "l_dataB_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_dataB_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "l_dataB_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_mul1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "l_mul1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U46", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U47", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	muls_Pipeline_VITIS_LOOP_101_2 {
		l_Tc_m_Sreg_Array_2 {Type X LastRead 5 FirstWrite -1}
		l_Tc_m_Sreg_Array {Type X LastRead 5 FirstWrite -1}
		l_flush_Array {Type X LastRead 4 FirstWrite -1}
		l_dataA_0 {Type I LastRead 0 FirstWrite -1}
		l_dataB_0 {Type I LastRead 0 FirstWrite -1}
		l_dataB_1 {Type O LastRead -1 FirstWrite 0}
		l_mul1 {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	l_Tc_m_Sreg_Array_2 { ap_memory {  { l_Tc_m_Sreg_Array_2_address0 mem_address 1 1 }  { l_Tc_m_Sreg_Array_2_ce0 mem_ce 1 1 }  { l_Tc_m_Sreg_Array_2_we0 mem_we 1 1 }  { l_Tc_m_Sreg_Array_2_d0 mem_din 1 32 }  { l_Tc_m_Sreg_Array_2_q0 mem_dout 0 32 } } }
	l_Tc_m_Sreg_Array { ap_memory {  { l_Tc_m_Sreg_Array_address0 mem_address 1 1 }  { l_Tc_m_Sreg_Array_ce0 mem_ce 1 1 }  { l_Tc_m_Sreg_Array_we0 mem_we 1 1 }  { l_Tc_m_Sreg_Array_d0 mem_din 1 32 }  { l_Tc_m_Sreg_Array_q0 mem_dout 0 32 } } }
	l_flush_Array { ap_memory {  { l_flush_Array_address0 mem_address 1 1 }  { l_flush_Array_ce0 mem_ce 1 1 }  { l_flush_Array_we0 mem_we 1 1 }  { l_flush_Array_d0 mem_din 1 1 }  { l_flush_Array_q0 mem_dout 0 1 } } }
	l_dataA_0 { ap_fifo {  { l_dataA_0_dout fifo_port_we 0 34 }  { l_dataA_0_num_data_valid fifo_status_num_data_valid 0 3 }  { l_dataA_0_fifo_cap fifo_update 0 3 }  { l_dataA_0_empty_n fifo_status 0 1 }  { l_dataA_0_read fifo_data 1 1 } } }
	l_dataB_0 { ap_fifo {  { l_dataB_0_dout fifo_port_we 0 64 }  { l_dataB_0_num_data_valid fifo_status_num_data_valid 0 3 }  { l_dataB_0_fifo_cap fifo_update 0 3 }  { l_dataB_0_empty_n fifo_status 0 1 }  { l_dataB_0_read fifo_data 1 1 } } }
	l_dataB_1 { ap_fifo {  { l_dataB_1_din fifo_port_we 1 64 }  { l_dataB_1_num_data_valid fifo_status_num_data_valid 0 2 }  { l_dataB_1_fifo_cap fifo_update 0 2 }  { l_dataB_1_full_n fifo_status 0 1 }  { l_dataB_1_write fifo_data 1 1 } } }
	l_mul1 { ap_fifo {  { l_mul1_din fifo_port_we 1 64 }  { l_mul1_num_data_valid fifo_status_num_data_valid 0 2 }  { l_mul1_fifo_cap fifo_update 0 2 }  { l_mul1_full_n fifo_status 0 1 }  { l_mul1_write fifo_data 1 1 } } }
}
