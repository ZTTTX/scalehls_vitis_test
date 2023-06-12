set moduleName systolicArray
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {systolicArray}
set C_modelType { void 0 }
set C_modelArgList {
	{ l_aStr1 int 66 regular {fifo 0 volatile }  }
	{ l_bStr2 int 64 regular {fifo 0 volatile }  }
	{ l_dataA_0 int 34 regular {fifo 1 volatile }  }
	{ l_dataA_1 int 34 regular {fifo 1 volatile }  }
	{ l_dataB_0 int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l_aStr1", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "l_bStr2", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_dataA_0", "interface" : "fifo", "bitwidth" : 34, "direction" : "WRITEONLY"} , 
 	{ "Name" : "l_dataA_1", "interface" : "fifo", "bitwidth" : 34, "direction" : "WRITEONLY"} , 
 	{ "Name" : "l_dataB_0", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ l_aStr1_dout sc_in sc_lv 66 signal 0 } 
	{ l_aStr1_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ l_aStr1_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ l_aStr1_empty_n sc_in sc_logic 1 signal 0 } 
	{ l_aStr1_read sc_out sc_logic 1 signal 0 } 
	{ l_bStr2_dout sc_in sc_lv 64 signal 1 } 
	{ l_bStr2_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ l_bStr2_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ l_bStr2_empty_n sc_in sc_logic 1 signal 1 } 
	{ l_bStr2_read sc_out sc_logic 1 signal 1 } 
	{ l_dataA_0_din sc_out sc_lv 34 signal 2 } 
	{ l_dataA_0_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ l_dataA_0_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ l_dataA_0_full_n sc_in sc_logic 1 signal 2 } 
	{ l_dataA_0_write sc_out sc_logic 1 signal 2 } 
	{ l_dataA_1_din sc_out sc_lv 34 signal 3 } 
	{ l_dataA_1_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ l_dataA_1_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ l_dataA_1_full_n sc_in sc_logic 1 signal 3 } 
	{ l_dataA_1_write sc_out sc_logic 1 signal 3 } 
	{ l_dataB_0_din sc_out sc_lv 64 signal 4 } 
	{ l_dataB_0_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ l_dataB_0_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ l_dataB_0_full_n sc_in sc_logic 1 signal 4 } 
	{ l_dataB_0_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "l_aStr1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "l_aStr1", "role": "dout" }} , 
 	{ "name": "l_aStr1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_aStr1", "role": "num_data_valid" }} , 
 	{ "name": "l_aStr1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_aStr1", "role": "fifo_cap" }} , 
 	{ "name": "l_aStr1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_aStr1", "role": "empty_n" }} , 
 	{ "name": "l_aStr1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_aStr1", "role": "read" }} , 
 	{ "name": "l_bStr2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_bStr2", "role": "dout" }} , 
 	{ "name": "l_bStr2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_bStr2", "role": "num_data_valid" }} , 
 	{ "name": "l_bStr2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_bStr2", "role": "fifo_cap" }} , 
 	{ "name": "l_bStr2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_bStr2", "role": "empty_n" }} , 
 	{ "name": "l_bStr2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_bStr2", "role": "read" }} , 
 	{ "name": "l_dataA_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":34, "type": "signal", "bundle":{"name": "l_dataA_0", "role": "din" }} , 
 	{ "name": "l_dataA_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_dataA_0", "role": "num_data_valid" }} , 
 	{ "name": "l_dataA_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_dataA_0", "role": "fifo_cap" }} , 
 	{ "name": "l_dataA_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataA_0", "role": "full_n" }} , 
 	{ "name": "l_dataA_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataA_0", "role": "write" }} , 
 	{ "name": "l_dataA_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":34, "type": "signal", "bundle":{"name": "l_dataA_1", "role": "din" }} , 
 	{ "name": "l_dataA_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_dataA_1", "role": "num_data_valid" }} , 
 	{ "name": "l_dataA_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_dataA_1", "role": "fifo_cap" }} , 
 	{ "name": "l_dataA_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataA_1", "role": "full_n" }} , 
 	{ "name": "l_dataA_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataA_1", "role": "write" }} , 
 	{ "name": "l_dataB_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_dataB_0", "role": "din" }} , 
 	{ "name": "l_dataB_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_dataB_0", "role": "num_data_valid" }} , 
 	{ "name": "l_dataB_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "l_dataB_0", "role": "fifo_cap" }} , 
 	{ "name": "l_dataB_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataB_0", "role": "full_n" }} , 
 	{ "name": "l_dataB_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataB_0", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5"],
		"CDFG" : "systolicArray",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_aStr1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_aStr1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_bStr2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_bStr2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataA_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_dataA_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataA_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_dataA_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataB_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_dataB_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_Tb_m_Sreg_Array_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_Tb_m_Sreg_Array_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_systolicArray_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_36", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "systolicArray_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_Tb_m_Sreg_Array_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "l_Tb_m_Sreg_Array", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_633_1_VITIS_LOOP_634_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolicArray_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "systolicArray_Pipeline_VITIS_LOOP_247_1",
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
			{"Name" : "l_Tb_m_Sreg_Array_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "l_Tb_m_Sreg_Array", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "l_aStr1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "l_aStr1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_bStr2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "l_bStr2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_dataB_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "l_dataB_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_dataA_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "l_dataA_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_dataA_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "l_dataA_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_247_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"}]}


set ArgLastReadFirstWriteLatency {
	systolicArray {
		l_aStr1 {Type I LastRead 0 FirstWrite -1}
		l_bStr2 {Type I LastRead 0 FirstWrite -1}
		l_dataA_0 {Type O LastRead -1 FirstWrite 1}
		l_dataA_1 {Type O LastRead -1 FirstWrite 1}
		l_dataB_0 {Type O LastRead -1 FirstWrite 1}}
	systolicArray_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2 {
		l_Tb_m_Sreg_Array_1 {Type X LastRead 0 FirstWrite -1}
		l_Tb_m_Sreg_Array {Type X LastRead 0 FirstWrite -1}}
	systolicArray_Pipeline_VITIS_LOOP_247_1 {
		l_Tb_m_Sreg_Array_1 {Type X LastRead 1 FirstWrite -1}
		l_Tb_m_Sreg_Array {Type X LastRead 1 FirstWrite -1}
		l_aStr1 {Type I LastRead 0 FirstWrite -1}
		l_bStr2 {Type I LastRead 0 FirstWrite -1}
		l_dataB_0 {Type O LastRead -1 FirstWrite 1}
		l_dataA_0 {Type O LastRead -1 FirstWrite 1}
		l_dataA_1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l_aStr1 { ap_fifo {  { l_aStr1_dout fifo_port_we 0 66 }  { l_aStr1_num_data_valid fifo_status_num_data_valid 0 2 }  { l_aStr1_fifo_cap fifo_update 0 2 }  { l_aStr1_empty_n fifo_status 0 1 }  { l_aStr1_read fifo_data 1 1 } } }
	l_bStr2 { ap_fifo {  { l_bStr2_dout fifo_port_we 0 64 }  { l_bStr2_num_data_valid fifo_status_num_data_valid 0 2 }  { l_bStr2_fifo_cap fifo_update 0 2 }  { l_bStr2_empty_n fifo_status 0 1 }  { l_bStr2_read fifo_data 1 1 } } }
	l_dataA_0 { ap_fifo {  { l_dataA_0_din fifo_port_we 1 34 }  { l_dataA_0_num_data_valid fifo_status_num_data_valid 0 3 }  { l_dataA_0_fifo_cap fifo_update 0 3 }  { l_dataA_0_full_n fifo_status 0 1 }  { l_dataA_0_write fifo_data 1 1 } } }
	l_dataA_1 { ap_fifo {  { l_dataA_1_din fifo_port_we 1 34 }  { l_dataA_1_num_data_valid fifo_status_num_data_valid 0 3 }  { l_dataA_1_fifo_cap fifo_update 0 3 }  { l_dataA_1_full_n fifo_status 0 1 }  { l_dataA_1_write fifo_data 1 1 } } }
	l_dataB_0 { ap_fifo {  { l_dataB_0_din fifo_port_we 1 64 }  { l_dataB_0_num_data_valid fifo_status_num_data_valid 0 3 }  { l_dataB_0_fifo_cap fifo_update 0 3 }  { l_dataB_0_full_n fifo_status 0 1 }  { l_dataB_0_write fifo_data 1 1 } } }
}
