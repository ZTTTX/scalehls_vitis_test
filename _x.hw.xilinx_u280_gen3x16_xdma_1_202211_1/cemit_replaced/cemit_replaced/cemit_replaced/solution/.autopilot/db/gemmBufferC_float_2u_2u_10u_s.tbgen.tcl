set moduleName gemmBufferC_float_2u_2u_10u_s
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
set C_modelName {gemmBufferC<float, 2u, 2u, 10u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ l_sum3 int 64 regular {fifo 0 volatile }  }
	{ l_mat4 int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l_sum3", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_mat4", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l_sum3_dout sc_in sc_lv 64 signal 0 } 
	{ l_sum3_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ l_sum3_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ l_sum3_empty_n sc_in sc_logic 1 signal 0 } 
	{ l_sum3_read sc_out sc_logic 1 signal 0 } 
	{ l_mat4_din sc_out sc_lv 64 signal 1 } 
	{ l_mat4_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ l_mat4_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ l_mat4_full_n sc_in sc_logic 1 signal 1 } 
	{ l_mat4_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l_sum3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_sum3", "role": "dout" }} , 
 	{ "name": "l_sum3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_sum3", "role": "num_data_valid" }} , 
 	{ "name": "l_sum3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_sum3", "role": "fifo_cap" }} , 
 	{ "name": "l_sum3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_sum3", "role": "empty_n" }} , 
 	{ "name": "l_sum3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_sum3", "role": "read" }} , 
 	{ "name": "l_mat4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_mat4", "role": "din" }} , 
 	{ "name": "l_mat4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_mat4", "role": "num_data_valid" }} , 
 	{ "name": "l_mat4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_mat4", "role": "fifo_cap" }} , 
 	{ "name": "l_mat4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_mat4", "role": "full_n" }} , 
 	{ "name": "l_mat4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_mat4", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5"],
		"CDFG" : "gemmBufferC_float_2u_2u_10u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_sum3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30", "Port" : "l_sum3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "l_mat4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40", "Port" : "l_mat4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_bufferC_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_bufferC_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_bufferC_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "l_bufferC", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "l_sum3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "l_sum3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_93_1_VITIS_LOOP_94_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2_fu_30.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_bufferC", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "l_bufferC_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "l_mat4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "l_mat4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_119_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8_fu_40.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"}]}


set ArgLastReadFirstWriteLatency {
	gemmBufferC_float_2u_2u_10u_s {
		l_sum3 {Type I LastRead 1 FirstWrite -1}
		l_mat4 {Type O LastRead -1 FirstWrite 1}}
	gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2 {
		l_bufferC_1 {Type O LastRead -1 FirstWrite 1}
		l_bufferC {Type O LastRead -1 FirstWrite 1}
		l_sum3 {Type I LastRead 1 FirstWrite -1}}
	gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8 {
		l_bufferC {Type I LastRead 0 FirstWrite -1}
		l_bufferC_1 {Type I LastRead 0 FirstWrite -1}
		l_mat4 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "28", "Max" : "28"}
	, {"Name" : "Interval", "Min" : "28", "Max" : "28"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l_sum3 { ap_fifo {  { l_sum3_dout fifo_port_we 0 64 }  { l_sum3_num_data_valid fifo_status_num_data_valid 0 2 }  { l_sum3_fifo_cap fifo_update 0 2 }  { l_sum3_empty_n fifo_status 0 1 }  { l_sum3_read fifo_data 1 1 } } }
	l_mat4 { ap_fifo {  { l_mat4_din fifo_port_we 1 64 }  { l_mat4_num_data_valid fifo_status_num_data_valid 0 2 }  { l_mat4_fifo_cap fifo_update 0 2 }  { l_mat4_full_n fifo_status 0 1 }  { l_mat4_write fifo_data 1 1 } } }
}
