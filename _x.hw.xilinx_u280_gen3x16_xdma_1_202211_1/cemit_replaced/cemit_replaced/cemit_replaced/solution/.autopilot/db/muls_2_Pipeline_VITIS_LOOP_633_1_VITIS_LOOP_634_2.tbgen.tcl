set moduleName muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2
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
set C_modelName {muls.2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ l_Tc_m_Sreg_Array_1 float 32 regular {array 2 { 2 } 0 1 }  }
	{ l_Tc_m_Sreg_Array float 32 regular {array 2 { 2 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l_Tc_m_Sreg_Array_1", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "l_Tc_m_Sreg_Array", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ l_Tc_m_Sreg_Array_1_address0 sc_out sc_lv 1 signal 0 } 
	{ l_Tc_m_Sreg_Array_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ l_Tc_m_Sreg_Array_1_we0 sc_out sc_logic 1 signal 0 } 
	{ l_Tc_m_Sreg_Array_1_d0 sc_out sc_lv 32 signal 0 } 
	{ l_Tc_m_Sreg_Array_1_q0 sc_in sc_lv 32 signal 0 } 
	{ l_Tc_m_Sreg_Array_address0 sc_out sc_lv 1 signal 1 } 
	{ l_Tc_m_Sreg_Array_ce0 sc_out sc_logic 1 signal 1 } 
	{ l_Tc_m_Sreg_Array_we0 sc_out sc_logic 1 signal 1 } 
	{ l_Tc_m_Sreg_Array_d0 sc_out sc_lv 32 signal 1 } 
	{ l_Tc_m_Sreg_Array_q0 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array_1", "role": "address0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array_1", "role": "ce0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array_1", "role": "we0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array_1", "role": "d0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array_1", "role": "q0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array", "role": "address0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array", "role": "ce0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array", "role": "we0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array", "role": "d0" }} , 
 	{ "name": "l_Tc_m_Sreg_Array_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "l_Tc_m_Sreg_Array", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2",
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
			{"Name" : "l_Tc_m_Sreg_Array_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "l_Tc_m_Sreg_Array", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_633_1_VITIS_LOOP_634_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2 {
		l_Tc_m_Sreg_Array_1 {Type X LastRead 0 FirstWrite -1}
		l_Tc_m_Sreg_Array {Type X LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l_Tc_m_Sreg_Array_1 { ap_memory {  { l_Tc_m_Sreg_Array_1_address0 mem_address 1 1 }  { l_Tc_m_Sreg_Array_1_ce0 mem_ce 1 1 }  { l_Tc_m_Sreg_Array_1_we0 mem_we 1 1 }  { l_Tc_m_Sreg_Array_1_d0 mem_din 1 32 }  { l_Tc_m_Sreg_Array_1_q0 mem_dout 0 32 } } }
	l_Tc_m_Sreg_Array { ap_memory {  { l_Tc_m_Sreg_Array_address0 mem_address 1 1 }  { l_Tc_m_Sreg_Array_ce0 mem_ce 1 1 }  { l_Tc_m_Sreg_Array_we0 mem_we 1 1 }  { l_Tc_m_Sreg_Array_d0 mem_din 1 32 }  { l_Tc_m_Sreg_Array_q0 mem_dout 0 32 } } }
}
