set moduleName process_r
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
set C_modelName {process}
set C_modelType { void 0 }
set C_modelArgList {
	{ l_strA4_i int 64 regular {fifo 0 volatile }  }
	{ l_strB5_i int 64 regular {fifo 0 volatile }  }
	{ l_sum3 int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l_strA4_i", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_strB5_i", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_sum3", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ l_strA4_i_dout sc_in sc_lv 64 signal 0 } 
	{ l_strA4_i_empty_n sc_in sc_logic 1 signal 0 } 
	{ l_strA4_i_read sc_out sc_logic 1 signal 0 } 
	{ l_strB5_i_dout sc_in sc_lv 64 signal 1 } 
	{ l_strB5_i_empty_n sc_in sc_logic 1 signal 1 } 
	{ l_strB5_i_read sc_out sc_logic 1 signal 1 } 
	{ l_sum3_din sc_out sc_lv 64 signal 2 } 
	{ l_sum3_full_n sc_in sc_logic 1 signal 2 } 
	{ l_sum3_write sc_out sc_logic 1 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "l_strA4_i_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_strA4_i", "role": "dout" }} , 
 	{ "name": "l_strA4_i_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strA4_i", "role": "empty_n" }} , 
 	{ "name": "l_strA4_i_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strA4_i", "role": "read" }} , 
 	{ "name": "l_strB5_i_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_strB5_i", "role": "dout" }} , 
 	{ "name": "l_strB5_i_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strB5_i", "role": "empty_n" }} , 
 	{ "name": "l_strB5_i_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strB5_i", "role": "read" }} , 
 	{ "name": "l_sum3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_sum3", "role": "din" }} , 
 	{ "name": "l_sum3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_sum3", "role": "full_n" }} , 
 	{ "name": "l_sum3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_sum3", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "13", "33", "53", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66"],
		"CDFG" : "process_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"ID" : "1", "Name" : "tagAB_U0"}],
		"OutputProcess" : [
			{"ID" : "53", "Name" : "merge_U0"}],
		"Port" : [
			{"Name" : "l_strA4_i", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "tagAB_U0", "Port" : "l_strA4_i"}]},
			{"Name" : "l_strB5_i", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "tagAB_U0", "Port" : "l_strB5_i"}]},
			{"Name" : "l_sum3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "merge_U0", "Port" : "l_sum3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tagAB_U0", "Parent" : "0", "Child" : ["2", "4"],
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
					{"ID" : "2", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Port" : "l_strA4_i", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "l_strB5_i", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Port" : "l_strB5_i", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "l_aStr1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "55", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Port" : "l_aStr1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "4", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36", "Port" : "l_aStr1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "l_bStr2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "56", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Port" : "l_bStr2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "4", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36", "Port" : "l_bStr2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tagAB_U0.grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Parent" : "1", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.tagAB_U0.grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.tagAB_U0.grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36", "Parent" : "1", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.tagAB_U0.grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.systolicArray_U0", "Parent" : "0", "Child" : ["7", "8", "9", "11"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_systolicArray_U0_U",
		"Port" : [
			{"Name" : "l_aStr1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "55", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_aStr1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_bStr2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "56", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_bStr2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataA_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13","14"], "DependentChan" : "57", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_dataA_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataA_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["33","34"], "DependentChan" : "58", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_dataA_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataB_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13","14"], "DependentChan" : "59", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_dataB_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.systolicArray_U0.l_Tb_m_Sreg_Array_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.systolicArray_U0.l_Tb_m_Sreg_Array_1_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.systolicArray_U0.grp_systolicArray_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_36", "Parent" : "6", "Child" : ["10"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.systolicArray_U0.grp_systolicArray_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.systolicArray_U0.grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Parent" : "6", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.systolicArray_U0.grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.macs_U0", "Parent" : "0", "Child" : ["14", "26", "31", "32"],
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
		"StartSource" : "6",
		"StartFifo" : "start_for_macs_U0_U",
		"InputProcess" : [
			{"ID" : "14", "Name" : "muls_U0"}],
		"OutputProcess" : [
			{"ID" : "14", "Name" : "muls_U0"},
			{"ID" : "26", "Name" : "adds_U0"}],
		"Port" : [
			{"Name" : "l_dataA_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "57", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "muls_U0", "Port" : "l_dataA_0"}]},
			{"Name" : "l_dataB_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "59", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "muls_U0", "Port" : "l_dataB_0"}]},
			{"Name" : "l_dataB_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["33","34"], "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "muls_U0", "Port" : "l_dataB_1"}]},
			{"Name" : "l_sum_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["53"], "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "adds_U0", "Port" : "l_sum_0"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.macs_U0.muls_U0", "Parent" : "13", "Child" : ["15", "16", "17", "18", "20", "22"],
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
			{"Name" : "l_dataA_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "57", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Port" : "l_dataA_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataB_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "59", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Port" : "l_dataB_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataB_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["33","34"], "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Port" : "l_dataB_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_mul1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Port" : "l_mul1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_U0.muls_U0.l_flush_Array_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_U0.muls_U0.l_Tc_m_Sreg_Array_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_U0.muls_U0.l_Tc_m_Sreg_Array_2_U", "Parent" : "14"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_89_1_fu_40", "Parent" : "14", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_89_1_fu_40.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_46", "Parent" : "14", "Child" : ["21"],
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
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Parent" : "14", "Child" : ["23", "24", "25"],
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
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54.fmul_32ns_32ns_32_4_max_dsp_1_U30", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54.fmul_32ns_32ns_32_4_max_dsp_1_U31", "Parent" : "22"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.macs_U0.adds_U0", "Parent" : "13", "Child" : ["27", "28", "29", "30"],
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
		"StartSource" : "14",
		"StartFifo" : "start_for_adds_U0_U",
		"Port" : [
			{"Name" : "l_mul1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_mul1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_sum_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["53"], "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_sum_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_193_1_VITIS_LOOP_194_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_U0.adds_U0.fadd_32ns_32ns_32_7_full_dsp_1_U46", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_U0.adds_U0.fadd_32ns_32ns_32_7_full_dsp_1_U47", "Parent" : "26"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_U0.adds_U0.fadd_32ns_32ns_32_5_no_dsp_1_U48", "Parent" : "26"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_U0.adds_U0.flow_control_loop_pipe_U", "Parent" : "26"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.macs_U0.l_mul_U", "Parent" : "13"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.macs_U0.start_for_adds_U0_U", "Parent" : "13"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.macs_1_U0", "Parent" : "0", "Child" : ["34", "46", "51", "52"],
		"CDFG" : "macs_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "6",
		"StartFifo" : "start_for_macs_1_U0_U",
		"InputProcess" : [
			{"ID" : "34", "Name" : "muls_2_U0"}],
		"OutputProcess" : [
			{"ID" : "46", "Name" : "adds_3_U0"}],
		"Port" : [
			{"Name" : "l_dataA_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "58", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "muls_2_U0", "Port" : "l_dataA_1"}]},
			{"Name" : "l_dataB_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13","14"], "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "muls_2_U0", "Port" : "l_dataB_1"}]},
			{"Name" : "l_sum_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["53"], "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "adds_3_U0", "Port" : "l_sum_1"}]}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.muls_2_U0", "Parent" : "33", "Child" : ["35", "36", "37", "38", "40", "42"],
		"CDFG" : "muls_2",
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
			{"Name" : "l_dataA_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "58", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52", "Port" : "l_dataA_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataB_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13","14"], "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52", "Port" : "l_dataB_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_mul1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["46"], "DependentChan" : "51", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52", "Port" : "l_mul1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.muls_2_U0.l_flush_Array_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.muls_2_U0.l_Tc_m_Sreg_Array_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.muls_2_U0.l_Tc_m_Sreg_Array_1_U", "Parent" : "34"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_141_1_fu_38", "Parent" : "34", "Child" : ["39"],
		"CDFG" : "muls_2_Pipeline_VITIS_LOOP_141_1",
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
			{"Name" : "VITIS_LOOP_141_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_141_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_44", "Parent" : "34", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52", "Parent" : "34", "Child" : ["43", "44", "45"],
		"CDFG" : "muls_2_Pipeline_VITIS_LOOP_153_2",
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
			{"Name" : "l_Tc_m_Sreg_Array_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "l_Tc_m_Sreg_Array", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "l_flush_Array", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "l_dataA_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "l_dataA_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_dataB_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "l_dataB_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_mul1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "l_mul1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_153_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52.fmul_32ns_32ns_32_4_max_dsp_1_U62", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52.fmul_32ns_32ns_32_4_max_dsp_1_U63", "Parent" : "42"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.adds_3_U0", "Parent" : "33", "Child" : ["47", "48", "49", "50"],
		"CDFG" : "adds_3",
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
		"StartSource" : "34",
		"StartFifo" : "start_for_adds_3_U0_U",
		"Port" : [
			{"Name" : "l_mul1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["34"], "DependentChan" : "51", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_mul1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_sum_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["53"], "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_sum_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_193_1_VITIS_LOOP_194_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.adds_3_U0.fadd_32ns_32ns_32_7_full_dsp_1_U75", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.adds_3_U0.fadd_32ns_32ns_32_7_full_dsp_1_U76", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.adds_3_U0.fadd_32ns_32ns_32_5_no_dsp_1_U77", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.adds_3_U0.flow_control_loop_pipe_U", "Parent" : "46"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.l_mul_U", "Parent" : "33"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.macs_1_U0.start_for_adds_3_U0_U", "Parent" : "33"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.merge_U0", "Parent" : "0", "Child" : ["54"],
		"CDFG" : "merge",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "13",
		"StartFifo" : "start_for_merge_U0_U",
		"Port" : [
			{"Name" : "l_sum_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13","26"], "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_sum_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_sum_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["33","46"], "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_sum_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_sum3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_sum3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_83_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.merge_U0.flow_control_loop_pipe_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_aStr_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_bStr_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_dataA_0_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_dataA_1_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_dataB_0_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_dataB_1_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_sum_0_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_sum_1_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_systolicArray_U0_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_macs_U0_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_macs_1_U0_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_merge_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_r {
		l_strA4_i {Type I LastRead 1 FirstWrite -1}
		l_strB5_i {Type I LastRead 1 FirstWrite -1}
		l_sum3 {Type O LastRead -1 FirstWrite 1}}
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
		l_bStr2 {Type O LastRead -1 FirstWrite 1}}
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
		l_dataA_1 {Type O LastRead -1 FirstWrite 1}}
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
		l_sum_0 {Type O LastRead -1 FirstWrite 30}}
	macs_1 {
		l_dataA_1 {Type I LastRead 0 FirstWrite -1}
		l_dataB_1 {Type I LastRead 0 FirstWrite -1}
		l_sum_1 {Type O LastRead -1 FirstWrite 30}}
	muls_2 {
		l_dataA_1 {Type I LastRead 0 FirstWrite -1}
		l_dataB_1 {Type I LastRead 0 FirstWrite -1}
		l_mul1 {Type O LastRead -1 FirstWrite 5}}
	muls_2_Pipeline_VITIS_LOOP_141_1 {
		l_flush_Array {Type X LastRead 0 FirstWrite -1}}
	muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2 {
		l_Tc_m_Sreg_Array_1 {Type X LastRead 0 FirstWrite -1}
		l_Tc_m_Sreg_Array {Type X LastRead 0 FirstWrite -1}}
	muls_2_Pipeline_VITIS_LOOP_153_2 {
		l_Tc_m_Sreg_Array_1 {Type X LastRead 5 FirstWrite -1}
		l_Tc_m_Sreg_Array {Type X LastRead 5 FirstWrite -1}
		l_flush_Array {Type X LastRead 4 FirstWrite -1}
		l_dataA_1 {Type I LastRead 0 FirstWrite -1}
		l_dataB_1 {Type I LastRead 0 FirstWrite -1}
		l_mul1 {Type O LastRead -1 FirstWrite 5}}
	adds_3 {
		l_mul1 {Type I LastRead 4 FirstWrite -1}
		l_sum_1 {Type O LastRead -1 FirstWrite 30}}
	merge {
		l_sum_0 {Type I LastRead 1 FirstWrite -1}
		l_sum_1 {Type I LastRead 1 FirstWrite -1}
		l_sum3 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l_strA4_i { ap_fifo {  { l_strA4_i_dout fifo_port_we 0 64 }  { l_strA4_i_empty_n fifo_status 0 1 }  { l_strA4_i_read fifo_data 1 1 } } }
	l_strB5_i { ap_fifo {  { l_strB5_i_dout fifo_port_we 0 64 }  { l_strB5_i_empty_n fifo_status 0 1 }  { l_strB5_i_read fifo_data 1 1 } } }
	l_sum3 { ap_fifo {  { l_sum3_din fifo_port_we 1 64 }  { l_sum3_full_n fifo_status 0 1 }  { l_sum3_write fifo_data 1 1 } } }
}
