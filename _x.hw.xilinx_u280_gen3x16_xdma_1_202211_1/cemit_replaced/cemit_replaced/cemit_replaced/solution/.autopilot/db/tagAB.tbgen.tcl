set moduleName tagAB
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
set C_modelName {tagAB}
set C_modelType { void 0 }
set C_modelArgList {
	{ l_strA4_i int 64 regular {fifo 0 volatile }  }
	{ l_strB5_i int 64 regular {fifo 0 volatile }  }
	{ l_aStr1 int 66 regular {fifo 1 volatile }  }
	{ l_bStr2 int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l_strA4_i", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_strB5_i", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_aStr1", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "l_bStr2", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
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
	{ l_strA4_i_dout sc_in sc_lv 64 signal 0 } 
	{ l_strA4_i_empty_n sc_in sc_logic 1 signal 0 } 
	{ l_strA4_i_read sc_out sc_logic 1 signal 0 } 
	{ l_strB5_i_dout sc_in sc_lv 64 signal 1 } 
	{ l_strB5_i_empty_n sc_in sc_logic 1 signal 1 } 
	{ l_strB5_i_read sc_out sc_logic 1 signal 1 } 
	{ l_aStr1_din sc_out sc_lv 66 signal 2 } 
	{ l_aStr1_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ l_aStr1_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ l_aStr1_full_n sc_in sc_logic 1 signal 2 } 
	{ l_aStr1_write sc_out sc_logic 1 signal 2 } 
	{ l_bStr2_din sc_out sc_lv 64 signal 3 } 
	{ l_bStr2_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ l_bStr2_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ l_bStr2_full_n sc_in sc_logic 1 signal 3 } 
	{ l_bStr2_write sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "l_strA4_i_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_strA4_i", "role": "dout" }} , 
 	{ "name": "l_strA4_i_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strA4_i", "role": "empty_n" }} , 
 	{ "name": "l_strA4_i_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strA4_i", "role": "read" }} , 
 	{ "name": "l_strB5_i_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_strB5_i", "role": "dout" }} , 
 	{ "name": "l_strB5_i_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strB5_i", "role": "empty_n" }} , 
 	{ "name": "l_strB5_i_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strB5_i", "role": "read" }} , 
 	{ "name": "l_aStr1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "l_aStr1", "role": "din" }} , 
 	{ "name": "l_aStr1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_aStr1", "role": "num_data_valid" }} , 
 	{ "name": "l_aStr1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_aStr1", "role": "fifo_cap" }} , 
 	{ "name": "l_aStr1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_aStr1", "role": "full_n" }} , 
 	{ "name": "l_aStr1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_aStr1", "role": "write" }} , 
 	{ "name": "l_bStr2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_bStr2", "role": "din" }} , 
 	{ "name": "l_bStr2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_bStr2", "role": "num_data_valid" }} , 
 	{ "name": "l_bStr2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_bStr2", "role": "fifo_cap" }} , 
 	{ "name": "l_bStr2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_bStr2", "role": "full_n" }} , 
 	{ "name": "l_bStr2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_bStr2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "tagAB",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2061", "EstimateLatencyMax" : "2061",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_strA4_i", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Port" : "l_strA4_i", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "l_strB5_i", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Port" : "l_strB5_i", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "l_aStr1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Port" : "l_aStr1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36", "Port" : "l_aStr1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "l_bStr2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Port" : "l_bStr2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36", "Port" : "l_bStr2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2050", "EstimateLatencyMax" : "2050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_strA4_i", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "l_strA4_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_strB5_i", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "l_strB5_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_aStr1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "l_aStr1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_bStr2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "l_bStr2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_271_1_VITIS_LOOP_272_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "tagAB_Pipeline_VITIS_LOOP_283_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_aStr1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "l_aStr1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_bStr2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "l_bStr2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_283_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
	tagAB {
		l_strA4_i {Type I LastRead 1 FirstWrite -1}
		l_strB5_i {Type I LastRead 1 FirstWrite -1}
		l_aStr1 {Type O LastRead -1 FirstWrite 1}
		l_bStr2 {Type O LastRead -1 FirstWrite 1}}
	tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2 {
		l_strA4_i {Type I LastRead 1 FirstWrite -1}
		l_strB5_i {Type I LastRead 1 FirstWrite -1}
		l_aStr1 {Type O LastRead -1 FirstWrite 1}
		l_bStr2 {Type O LastRead -1 FirstWrite 1}}
	tagAB_Pipeline_VITIS_LOOP_283_3 {
		l_aStr1 {Type O LastRead -1 FirstWrite 1}
		l_bStr2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2061", "Max" : "2061"}
	, {"Name" : "Interval", "Min" : "2061", "Max" : "2061"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l_strA4_i { ap_fifo {  { l_strA4_i_dout fifo_port_we 0 64 }  { l_strA4_i_empty_n fifo_status 0 1 }  { l_strA4_i_read fifo_data 1 1 } } }
	l_strB5_i { ap_fifo {  { l_strB5_i_dout fifo_port_we 0 64 }  { l_strB5_i_empty_n fifo_status 0 1 }  { l_strB5_i_read fifo_data 1 1 } } }
	l_aStr1 { ap_fifo {  { l_aStr1_din fifo_port_we 1 66 }  { l_aStr1_num_data_valid fifo_status_num_data_valid 0 2 }  { l_aStr1_fifo_cap fifo_update 0 2 }  { l_aStr1_full_n fifo_status 0 1 }  { l_aStr1_write fifo_data 1 1 } } }
	l_bStr2 { ap_fifo {  { l_bStr2_din fifo_port_we 1 64 }  { l_bStr2_num_data_valid fifo_status_num_data_valid 0 2 }  { l_bStr2_fifo_cap fifo_update 0 2 }  { l_bStr2_full_n fifo_status 0 1 }  { l_bStr2_write fifo_data 1 1 } } }
}
