set moduleName macs
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {macs}
set C_modelType { void 0 }
set C_modelArgList {
	{ l_dataA_0 int 34 regular {fifo 0 volatile }  }
	{ l_dataB_0 int 64 regular {fifo 0 volatile }  }
	{ l_dataB_1 int 64 regular {fifo 1 volatile }  }
	{ l_sum_0 int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l_dataA_0", "interface" : "fifo", "bitwidth" : 34, "direction" : "READONLY"} , 
 	{ "Name" : "l_dataB_0", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_dataB_1", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "l_sum_0", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ l_dataA_0_dout sc_in sc_lv 34 signal 0 } 
	{ l_dataA_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ l_dataA_0_read sc_out sc_logic 1 signal 0 } 
	{ l_dataB_0_dout sc_in sc_lv 64 signal 1 } 
	{ l_dataB_0_empty_n sc_in sc_logic 1 signal 1 } 
	{ l_dataB_0_read sc_out sc_logic 1 signal 1 } 
	{ l_dataB_1_din sc_out sc_lv 64 signal 2 } 
	{ l_dataB_1_full_n sc_in sc_logic 1 signal 2 } 
	{ l_dataB_1_write sc_out sc_logic 1 signal 2 } 
	{ l_sum_0_din sc_out sc_lv 64 signal 3 } 
	{ l_sum_0_full_n sc_in sc_logic 1 signal 3 } 
	{ l_sum_0_write sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "l_dataA_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":34, "type": "signal", "bundle":{"name": "l_dataA_0", "role": "dout" }} , 
 	{ "name": "l_dataA_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataA_0", "role": "empty_n" }} , 
 	{ "name": "l_dataA_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataA_0", "role": "read" }} , 
 	{ "name": "l_dataB_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_dataB_0", "role": "dout" }} , 
 	{ "name": "l_dataB_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataB_0", "role": "empty_n" }} , 
 	{ "name": "l_dataB_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataB_0", "role": "read" }} , 
 	{ "name": "l_dataB_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_dataB_1", "role": "din" }} , 
 	{ "name": "l_dataB_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataB_1", "role": "full_n" }} , 
 	{ "name": "l_dataB_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_dataB_1", "role": "write" }} , 
 	{ "name": "l_sum_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_sum_0", "role": "din" }} , 
 	{ "name": "l_sum_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_sum_0", "role": "full_n" }} , 
 	{ "name": "l_sum_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_sum_0", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "13", "18", "19"],
		"CDFG" : "macs",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "muls_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "muls_U0"},
			{"ID" : "13", "Name" : "adds_U0"}],
		"Port" : [
			{"Name" : "l_dataA_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "muls_U0", "Port" : "l_dataA_0"}]},
			{"Name" : "l_dataB_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "muls_U0", "Port" : "l_dataB_0"}]},
			{"Name" : "l_dataB_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "muls_U0", "Port" : "l_dataB_1"}]},
			{"Name" : "l_sum_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "adds_U0", "Port" : "l_sum_0"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.muls_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "9"],
		"CDFG" : "muls",
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
			{"Name" : "l_dataA_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Port" : "l_dataA_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataB_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Port" : "l_dataB_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataB_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Port" : "l_dataB_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_mul1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Port" : "l_mul1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.muls_U0.l_flush_Array_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.muls_U0.l_Tc_m_Sreg_Array_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.muls_U0.l_Tc_m_Sreg_Array_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.muls_U0.grp_muls_Pipeline_VITIS_LOOP_89_1_fu_40", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "muls_Pipeline_VITIS_LOOP_89_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_flush_Array", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_89_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.muls_U0.grp_muls_Pipeline_VITIS_LOOP_89_1_fu_40.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.muls_U0.grp_muls_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_46", "Parent" : "1", "Child" : ["8"],
		"CDFG" : "muls_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2",
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
			{"Name" : "l_Tc_m_Sreg_Array_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "l_Tc_m_Sreg_Array", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_633_1_VITIS_LOOP_634_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.muls_U0.grp_muls_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.muls_U0.grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Parent" : "1", "Child" : ["10", "11", "12"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.muls_U0.grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54.fmul_32ns_32ns_32_4_max_dsp_1_U30", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.muls_U0.grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54.fmul_32ns_32ns_32_4_max_dsp_1_U31", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.muls_U0.grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.adds_U0", "Parent" : "0", "Child" : ["14", "15", "16", "17"],
		"CDFG" : "adds",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2076", "EstimateLatencyMax" : "2076",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_adds_U0_U",
		"Port" : [
			{"Name" : "l_mul1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_mul1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_sum_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_sum_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_193_1_VITIS_LOOP_194_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.adds_U0.fadd_32ns_32ns_32_7_full_dsp_1_U46", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.adds_U0.fadd_32ns_32ns_32_7_full_dsp_1_U47", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.adds_U0.fadd_32ns_32ns_32_5_no_dsp_1_U48", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.adds_U0.flow_control_loop_pipe_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_mul_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_adds_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	macs {
		l_dataA_0 {Type I LastRead 0 FirstWrite -1}
		l_dataB_0 {Type I LastRead 0 FirstWrite -1}
		l_dataB_1 {Type O LastRead -1 FirstWrite 0}
		l_sum_0 {Type O LastRead -1 FirstWrite 30}}
	muls {
		l_dataA_0 {Type I LastRead 0 FirstWrite -1}
		l_dataB_0 {Type I LastRead 0 FirstWrite -1}
		l_dataB_1 {Type O LastRead -1 FirstWrite 0}
		l_mul1 {Type O LastRead -1 FirstWrite 5}}
	muls_Pipeline_VITIS_LOOP_89_1 {
		l_flush_Array {Type X LastRead 0 FirstWrite -1}}
	muls_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2 {
		l_Tc_m_Sreg_Array_2 {Type X LastRead 0 FirstWrite -1}
		l_Tc_m_Sreg_Array {Type X LastRead 0 FirstWrite -1}}
	muls_Pipeline_VITIS_LOOP_101_2 {
		l_Tc_m_Sreg_Array_2 {Type X LastRead 5 FirstWrite -1}
		l_Tc_m_Sreg_Array {Type X LastRead 5 FirstWrite -1}
		l_flush_Array {Type X LastRead 4 FirstWrite -1}
		l_dataA_0 {Type I LastRead 0 FirstWrite -1}
		l_dataB_0 {Type I LastRead 0 FirstWrite -1}
		l_dataB_1 {Type O LastRead -1 FirstWrite 0}
		l_mul1 {Type O LastRead -1 FirstWrite 5}}
	adds {
		l_mul1 {Type I LastRead 4 FirstWrite -1}
		l_sum_0 {Type O LastRead -1 FirstWrite 30}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l_dataA_0 { ap_fifo {  { l_dataA_0_dout fifo_port_we 0 34 }  { l_dataA_0_empty_n fifo_status 0 1 }  { l_dataA_0_read fifo_data 1 1 } } }
	l_dataB_0 { ap_fifo {  { l_dataB_0_dout fifo_port_we 0 64 }  { l_dataB_0_empty_n fifo_status 0 1 }  { l_dataB_0_read fifo_data 1 1 } } }
	l_dataB_1 { ap_fifo {  { l_dataB_1_din fifo_port_we 1 64 }  { l_dataB_1_full_n fifo_status 0 1 }  { l_dataB_1_write fifo_data 1 1 } } }
	l_sum_0 { ap_fifo {  { l_sum_0_din fifo_port_we 1 64 }  { l_sum_0_full_n fifo_status 0 1 }  { l_sum_0_write fifo_data 1 1 } } }
}
