set moduleName axpy_float_2u_unsigned_int_s
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
set C_modelName {axpy<float, 2u, unsigned int>}
set C_modelType { void 0 }
set C_modelArgList {
	{ l_mat4 int 64 regular {fifo 0 volatile }  }
	{ l_betaC5 int 64 regular {fifo 0 volatile }  }
	{ l_strSum10 int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l_mat4", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_betaC5", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_strSum10", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l_mat4_dout sc_in sc_lv 64 signal 0 } 
	{ l_mat4_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ l_mat4_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ l_mat4_empty_n sc_in sc_logic 1 signal 0 } 
	{ l_mat4_read sc_out sc_logic 1 signal 0 } 
	{ l_betaC5_dout sc_in sc_lv 64 signal 1 } 
	{ l_betaC5_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ l_betaC5_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ l_betaC5_empty_n sc_in sc_logic 1 signal 1 } 
	{ l_betaC5_read sc_out sc_logic 1 signal 1 } 
	{ l_strSum10_din sc_out sc_lv 64 signal 2 } 
	{ l_strSum10_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ l_strSum10_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ l_strSum10_full_n sc_in sc_logic 1 signal 2 } 
	{ l_strSum10_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l_mat4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_mat4", "role": "dout" }} , 
 	{ "name": "l_mat4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_mat4", "role": "num_data_valid" }} , 
 	{ "name": "l_mat4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_mat4", "role": "fifo_cap" }} , 
 	{ "name": "l_mat4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_mat4", "role": "empty_n" }} , 
 	{ "name": "l_mat4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_mat4", "role": "read" }} , 
 	{ "name": "l_betaC5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_betaC5", "role": "dout" }} , 
 	{ "name": "l_betaC5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_betaC5", "role": "num_data_valid" }} , 
 	{ "name": "l_betaC5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_betaC5", "role": "fifo_cap" }} , 
 	{ "name": "l_betaC5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_betaC5", "role": "empty_n" }} , 
 	{ "name": "l_betaC5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_betaC5", "role": "read" }} , 
 	{ "name": "l_strSum10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_strSum10", "role": "din" }} , 
 	{ "name": "l_strSum10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_strSum10", "role": "num_data_valid" }} , 
 	{ "name": "l_strSum10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "l_strSum10", "role": "fifo_cap" }} , 
 	{ "name": "l_strSum10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strSum10", "role": "full_n" }} , 
 	{ "name": "l_strSum10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strSum10", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "axpy_float_2u_unsigned_int_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_mat4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_mat4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_betaC5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_betaC5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_strSum10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_strSum10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U135", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U136", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	axpy_float_2u_unsigned_int_s {
		l_mat4 {Type I LastRead 1 FirstWrite -1}
		l_betaC5 {Type I LastRead 1 FirstWrite -1}
		l_strSum10 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20", "Max" : "20"}
	, {"Name" : "Interval", "Min" : "20", "Max" : "20"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	l_mat4 { ap_fifo {  { l_mat4_dout fifo_port_we 0 64 }  { l_mat4_num_data_valid fifo_status_num_data_valid 0 2 }  { l_mat4_fifo_cap fifo_update 0 2 }  { l_mat4_empty_n fifo_status 0 1 }  { l_mat4_read fifo_data 1 1 } } }
	l_betaC5 { ap_fifo {  { l_betaC5_dout fifo_port_we 0 64 }  { l_betaC5_num_data_valid fifo_status_num_data_valid 0 2 }  { l_betaC5_fifo_cap fifo_update 0 2 }  { l_betaC5_empty_n fifo_status 0 1 }  { l_betaC5_read fifo_data 1 1 } } }
	l_strSum10 { ap_fifo {  { l_strSum10_din fifo_port_we 1 64 }  { l_strSum10_num_data_valid fifo_status_num_data_valid 0 2 }  { l_strSum10_fifo_cap fifo_update 0 2 }  { l_strSum10_full_n fifo_status 0 1 }  { l_strSum10_write fifo_data 1 1 } } }
}
