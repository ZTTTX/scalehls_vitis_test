set moduleName gemm_float_1024u_2u_10u_unsigned_int_s
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
set C_modelName {gemm<float, 1024u, 2u, 10u, unsigned int>}
set C_modelType { void 0 }
set C_modelArgList {
	{ l_strA7 int 64 regular {fifo 0 volatile }  }
	{ l_strB8 int 64 regular {fifo 0 volatile }  }
	{ l_strC9 int 64 regular {fifo 0 volatile }  }
	{ l_strSum10 int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "l_strA7", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_strB8", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_strC9", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "l_strSum10", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ l_strA7_dout sc_in sc_lv 64 signal 0 } 
	{ l_strA7_empty_n sc_in sc_logic 1 signal 0 } 
	{ l_strA7_read sc_out sc_logic 1 signal 0 } 
	{ l_strB8_dout sc_in sc_lv 64 signal 1 } 
	{ l_strB8_empty_n sc_in sc_logic 1 signal 1 } 
	{ l_strB8_read sc_out sc_logic 1 signal 1 } 
	{ l_strC9_dout sc_in sc_lv 64 signal 2 } 
	{ l_strC9_empty_n sc_in sc_logic 1 signal 2 } 
	{ l_strC9_read sc_out sc_logic 1 signal 2 } 
	{ l_strSum10_din sc_out sc_lv 64 signal 3 } 
	{ l_strSum10_full_n sc_in sc_logic 1 signal 3 } 
	{ l_strSum10_write sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "l_strA7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_strA7", "role": "dout" }} , 
 	{ "name": "l_strA7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strA7", "role": "empty_n" }} , 
 	{ "name": "l_strA7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strA7", "role": "read" }} , 
 	{ "name": "l_strB8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_strB8", "role": "dout" }} , 
 	{ "name": "l_strB8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strB8", "role": "empty_n" }} , 
 	{ "name": "l_strB8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strB8", "role": "read" }} , 
 	{ "name": "l_strC9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_strC9", "role": "dout" }} , 
 	{ "name": "l_strC9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strC9", "role": "empty_n" }} , 
 	{ "name": "l_strC9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strC9", "role": "read" }} , 
 	{ "name": "l_strSum10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "l_strSum10", "role": "din" }} , 
 	{ "name": "l_strSum10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strSum10", "role": "full_n" }} , 
 	{ "name": "l_strSum10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "l_strSum10", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "69", "76", "80", "84", "85", "86", "87", "88"],
		"CDFG" : "gemm_float_1024u_2u_10u_unsigned_int_s",
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
			{"ID" : "1", "Name" : "gemm_U0"},
			{"ID" : "76", "Name" : "scal_float_2u_unsigned_int_U0"}],
		"OutputProcess" : [
			{"ID" : "80", "Name" : "axpy_float_2u_unsigned_int_U0"}],
		"Port" : [
			{"Name" : "l_strA7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "gemm_U0", "Port" : "l_strA7"}]},
			{"Name" : "l_strB8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "gemm_U0", "Port" : "l_strB8"}]},
			{"Name" : "l_strC9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "scal_float_2u_unsigned_int_U0", "Port" : "l_strC9"}]},
			{"Name" : "l_strSum10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "axpy_float_2u_unsigned_int_U0", "Port" : "l_strSum10"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gemm_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "gemm",
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
			{"ID" : "2", "Name" : "process_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "process_U0"}],
		"Port" : [
			{"Name" : "l_strA7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "process_U0", "Port" : "l_strA7"}]},
			{"Name" : "l_strB8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "process_U0", "Port" : "l_strB8"}]},
			{"Name" : "l_sum3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["69"], "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "process_U0", "Port" : "l_sum3"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0", "Parent" : "1", "Child" : ["3", "8", "15", "35", "55", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68"],
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
			{"ID" : "3", "Name" : "tagAB_U0"}],
		"OutputProcess" : [
			{"ID" : "55", "Name" : "merge_U0"}],
		"Port" : [
			{"Name" : "l_strA7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "tagAB_U0", "Port" : "l_strA7"}]},
			{"Name" : "l_strB8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "tagAB_U0", "Port" : "l_strB8"}]},
			{"Name" : "l_sum3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["69"], "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "merge_U0", "Port" : "l_sum3"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.tagAB_U0", "Parent" : "2", "Child" : ["4", "6"],
		"CDFG" : "tagAB",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5133", "EstimateLatencyMax" : "5133",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_strA7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Port" : "l_strA7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "l_strB8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Port" : "l_strB8", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "l_aStr1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["8"], "DependentChan" : "57", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36", "Port" : "l_aStr1", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "4", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Port" : "l_aStr1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "l_bStr2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["8"], "DependentChan" : "58", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36", "Port" : "l_bStr2", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "4", "SubInstance" : "grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Port" : "l_bStr2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.tagAB_U0.grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24", "Parent" : "3", "Child" : ["5"],
		"CDFG" : "tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5122", "EstimateLatencyMax" : "5122",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_strA7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "l_strA7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_strB8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "l_strB8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_aStr1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "l_aStr1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_bStr2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "l_bStr2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_271_1_VITIS_LOOP_272_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.tagAB_U0.grp_tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2_fu_24.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.tagAB_U0.grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36", "Parent" : "3", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.tagAB_U0.grp_tagAB_Pipeline_VITIS_LOOP_283_3_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.systolicArray_U0", "Parent" : "2", "Child" : ["9", "10", "11", "13"],
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
		"StartSource" : "3",
		"StartFifo" : "start_for_systolicArray_U0_U",
		"Port" : [
			{"Name" : "l_aStr1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "57", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_aStr1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_bStr2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "58", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_bStr2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataA_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15","16"], "DependentChan" : "59", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_dataA_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataA_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35","36"], "DependentChan" : "60", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_dataA_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataB_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15","16"], "DependentChan" : "61", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Port" : "l_dataB_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.systolicArray_U0.l_Tb_m_Sreg_Array_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.systolicArray_U0.l_Tb_m_Sreg_Array_1_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.systolicArray_U0.grp_systolicArray_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_36", "Parent" : "8", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.systolicArray_U0.grp_systolicArray_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.systolicArray_U0.grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44", "Parent" : "8", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.systolicArray_U0.grp_systolicArray_Pipeline_VITIS_LOOP_247_1_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0", "Parent" : "2", "Child" : ["16", "28", "33", "34"],
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
		"StartSource" : "8",
		"StartFifo" : "start_for_macs_U0_U",
		"InputProcess" : [
			{"ID" : "16", "Name" : "muls_U0"}],
		"OutputProcess" : [
			{"ID" : "16", "Name" : "muls_U0"},
			{"ID" : "28", "Name" : "adds_U0"}],
		"Port" : [
			{"Name" : "l_dataA_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "59", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "muls_U0", "Port" : "l_dataA_0"}]},
			{"Name" : "l_dataB_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "61", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "muls_U0", "Port" : "l_dataB_0"}]},
			{"Name" : "l_dataB_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35","36"], "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "muls_U0", "Port" : "l_dataB_1"}]},
			{"Name" : "l_sum_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["55"], "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "adds_U0", "Port" : "l_sum_0"}]}]},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.muls_U0", "Parent" : "15", "Child" : ["17", "18", "19", "20", "22", "24"],
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
			{"Name" : "l_dataA_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "59", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Port" : "l_dataA_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataB_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "61", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Port" : "l_dataB_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataB_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35","36"], "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Port" : "l_dataB_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_mul1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["28"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Port" : "l_mul1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.muls_U0.l_flush_Array_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.muls_U0.l_Tc_m_Sreg_Array_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.muls_U0.l_Tc_m_Sreg_Array_2_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_89_1_fu_40", "Parent" : "16", "Child" : ["21"],
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
	{"ID" : "21", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_89_1_fu_40.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_46", "Parent" : "16", "Child" : ["23"],
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
	{"ID" : "23", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54", "Parent" : "16", "Child" : ["25", "26", "27"],
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
	{"ID" : "25", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54.fmul_32ns_32ns_32_4_max_dsp_1_U46", "Parent" : "24"},
	{"ID" : "26", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54.fmul_32ns_32ns_32_4_max_dsp_1_U47", "Parent" : "24"},
	{"ID" : "27", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.muls_U0.grp_muls_Pipeline_VITIS_LOOP_101_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.adds_U0", "Parent" : "15", "Child" : ["29", "30", "31", "32"],
		"CDFG" : "adds",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5148", "EstimateLatencyMax" : "5148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "16",
		"StartFifo" : "start_for_adds_U0_U",
		"Port" : [
			{"Name" : "l_mul1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_mul1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_sum_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["55"], "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_sum_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_193_1_VITIS_LOOP_194_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.adds_U0.fadd_32ns_32ns_32_7_full_dsp_1_U62", "Parent" : "28"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.adds_U0.fadd_32ns_32ns_32_7_full_dsp_1_U63", "Parent" : "28"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.adds_U0.fadd_32ns_32ns_32_5_no_dsp_1_U64", "Parent" : "28"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.adds_U0.flow_control_loop_pipe_U", "Parent" : "28"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.l_mul_U", "Parent" : "15"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_U0.start_for_adds_U0_U", "Parent" : "15"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0", "Parent" : "2", "Child" : ["36", "48", "53", "54"],
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
		"StartSource" : "8",
		"StartFifo" : "start_for_macs_1_U0_U",
		"InputProcess" : [
			{"ID" : "36", "Name" : "muls_2_U0"}],
		"OutputProcess" : [
			{"ID" : "48", "Name" : "adds_3_U0"}],
		"Port" : [
			{"Name" : "l_dataA_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "60", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "muls_2_U0", "Port" : "l_dataA_1"}]},
			{"Name" : "l_dataB_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15","16"], "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "muls_2_U0", "Port" : "l_dataB_1"}]},
			{"Name" : "l_sum_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["55"], "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "adds_3_U0", "Port" : "l_sum_1"}]}]},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.muls_2_U0", "Parent" : "35", "Child" : ["37", "38", "39", "40", "42", "44"],
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
			{"Name" : "l_dataA_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "60", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52", "Port" : "l_dataA_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_dataB_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15","16"], "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52", "Port" : "l_dataB_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "l_mul1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["48"], "DependentChan" : "53", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52", "Port" : "l_mul1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.muls_2_U0.l_flush_Array_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.muls_2_U0.l_Tc_m_Sreg_Array_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.muls_2_U0.l_Tc_m_Sreg_Array_1_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_141_1_fu_38", "Parent" : "36", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_141_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_44", "Parent" : "36", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52", "Parent" : "36", "Child" : ["45", "46", "47"],
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
	{"ID" : "45", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52.fmul_32ns_32ns_32_4_max_dsp_1_U78", "Parent" : "44"},
	{"ID" : "46", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52.fmul_32ns_32ns_32_4_max_dsp_1_U79", "Parent" : "44"},
	{"ID" : "47", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.muls_2_U0.grp_muls_2_Pipeline_VITIS_LOOP_153_2_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.adds_3_U0", "Parent" : "35", "Child" : ["49", "50", "51", "52"],
		"CDFG" : "adds_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5148", "EstimateLatencyMax" : "5148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "36",
		"StartFifo" : "start_for_adds_3_U0_U",
		"Port" : [
			{"Name" : "l_mul1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "53", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_mul1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_sum_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["55"], "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_sum_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_193_1_VITIS_LOOP_194_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.adds_3_U0.fadd_32ns_32ns_32_7_full_dsp_1_U91", "Parent" : "48"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.adds_3_U0.fadd_32ns_32ns_32_7_full_dsp_1_U92", "Parent" : "48"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.adds_3_U0.fadd_32ns_32ns_32_5_no_dsp_1_U93", "Parent" : "48"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.adds_3_U0.flow_control_loop_pipe_U", "Parent" : "48"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.l_mul_U", "Parent" : "35"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.macs_1_U0.start_for_adds_3_U0_U", "Parent" : "35"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.merge_U0", "Parent" : "2", "Child" : ["56"],
		"CDFG" : "merge",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "15",
		"StartFifo" : "start_for_merge_U0_U",
		"Port" : [
			{"Name" : "l_sum_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15","28"], "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_sum_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_sum_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35","48"], "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_sum_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_sum3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["69"], "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_sum3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_83_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.merge_U0.flow_control_loop_pipe_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.l_aStr_U", "Parent" : "2"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.l_bStr_U", "Parent" : "2"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.l_dataA_0_U", "Parent" : "2"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.l_dataA_1_U", "Parent" : "2"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.l_dataB_0_U", "Parent" : "2"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.l_dataB_1_U", "Parent" : "2"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.l_sum_0_U", "Parent" : "2"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.l_sum_1_U", "Parent" : "2"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.start_for_systolicArray_U0_U", "Parent" : "2"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.start_for_macs_U0_U", "Parent" : "2"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.start_for_macs_1_U0_U", "Parent" : "2"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemm_U0.process_U0.start_for_merge_U0_U", "Parent" : "2"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gemmBufferC_float_2u_2u_10u_U0", "Parent" : "0", "Child" : ["70", "71", "72", "74"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_gemmBufferC_float_2u_2u_10u_U0_U",
		"Port" : [
			{"Name" : "l_sum3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1","2","55"], "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_30", "Port" : "l_sum3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "l_mat4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["80"], "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_131_8_fu_40", "Port" : "l_mat4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.gemmBufferC_float_2u_2u_10u_U0.l_bufferC_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.gemmBufferC_float_2u_2u_10u_U0.l_bufferC_1_U", "Parent" : "69"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.gemmBufferC_float_2u_2u_10u_U0.grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_30", "Parent" : "69", "Child" : ["73"],
		"CDFG" : "gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2",
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
			{"Name" : "VITIS_LOOP_105_1_VITIS_LOOP_106_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemmBufferC_float_2u_2u_10u_U0.grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_30.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.gemmBufferC_float_2u_2u_10u_U0.grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_131_8_fu_40", "Parent" : "69", "Child" : ["75"],
		"CDFG" : "gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_131_8",
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
			{"Name" : "VITIS_LOOP_131_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.gemmBufferC_float_2u_2u_10u_U0.grp_gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_131_8_fu_40.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scal_float_2u_unsigned_int_U0", "Parent" : "0", "Child" : ["77", "78", "79"],
		"CDFG" : "scal_float_2u_unsigned_int_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "l_strC9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_strC9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_betaC5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["80"], "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_betaC5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_59_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.scal_float_2u_unsigned_int_U0.fmul_32ns_32ns_32_4_max_dsp_1_U131", "Parent" : "76"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.scal_float_2u_unsigned_int_U0.fmul_32ns_32ns_32_4_max_dsp_1_U132", "Parent" : "76"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.scal_float_2u_unsigned_int_U0.flow_control_loop_pipe_U", "Parent" : "76"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.axpy_float_2u_unsigned_int_U0", "Parent" : "0", "Child" : ["81", "82", "83"],
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
		"StartSource" : "76",
		"StartFifo" : "start_for_axpy_float_2u_unsigned_int_U0_U",
		"Port" : [
			{"Name" : "l_mat4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_mat4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_betaC5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_betaC5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "l_strSum10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "l_strSum10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axpy_float_2u_unsigned_int_U0.fadd_32ns_32ns_32_7_full_dsp_1_U135", "Parent" : "80"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axpy_float_2u_unsigned_int_U0.fadd_32ns_32ns_32_7_full_dsp_1_U136", "Parent" : "80"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axpy_float_2u_unsigned_int_U0.flow_control_loop_pipe_U", "Parent" : "80"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_sum_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_mat_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l_betaC_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_gemmBufferC_float_2u_2u_10u_U0_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_axpy_float_2u_unsigned_int_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gemm_float_1024u_2u_10u_unsigned_int_s {
		l_strA7 {Type I LastRead 1 FirstWrite -1}
		l_strB8 {Type I LastRead 1 FirstWrite -1}
		l_strC9 {Type I LastRead 0 FirstWrite -1}
		l_strSum10 {Type O LastRead -1 FirstWrite 9}}
	gemm {
		l_strA7 {Type I LastRead 1 FirstWrite -1}
		l_strB8 {Type I LastRead 1 FirstWrite -1}
		l_sum3 {Type O LastRead -1 FirstWrite 1}}
	process_r {
		l_strA7 {Type I LastRead 1 FirstWrite -1}
		l_strB8 {Type I LastRead 1 FirstWrite -1}
		l_sum3 {Type O LastRead -1 FirstWrite 1}}
	tagAB {
		l_strA7 {Type I LastRead 1 FirstWrite -1}
		l_strB8 {Type I LastRead 1 FirstWrite -1}
		l_aStr1 {Type O LastRead -1 FirstWrite 1}
		l_bStr2 {Type O LastRead -1 FirstWrite 1}}
	tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2 {
		l_strA7 {Type I LastRead 1 FirstWrite -1}
		l_strB8 {Type I LastRead 1 FirstWrite -1}
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
		l_sum3 {Type O LastRead -1 FirstWrite 1}}
	gemmBufferC_float_2u_2u_10u_s {
		l_sum3 {Type I LastRead 1 FirstWrite -1}
		l_mat4 {Type O LastRead -1 FirstWrite 1}}
	gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2 {
		l_bufferC_1 {Type O LastRead -1 FirstWrite 1}
		l_bufferC {Type O LastRead -1 FirstWrite 1}
		l_sum3 {Type I LastRead 1 FirstWrite -1}}
	gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_131_8 {
		l_bufferC {Type I LastRead 0 FirstWrite -1}
		l_bufferC_1 {Type I LastRead 0 FirstWrite -1}
		l_mat4 {Type O LastRead -1 FirstWrite 1}}
	scal_float_2u_unsigned_int_s {
		l_strC9 {Type I LastRead 0 FirstWrite -1}
		l_betaC5 {Type O LastRead -1 FirstWrite 5}}
	axpy_float_2u_unsigned_int_s {
		l_mat4 {Type I LastRead 1 FirstWrite -1}
		l_betaC5 {Type I LastRead 1 FirstWrite -1}
		l_strSum10 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l_strA7 { ap_fifo {  { l_strA7_dout fifo_port_we 0 64 }  { l_strA7_empty_n fifo_status 0 1 }  { l_strA7_read fifo_data 1 1 } } }
	l_strB8 { ap_fifo {  { l_strB8_dout fifo_port_we 0 64 }  { l_strB8_empty_n fifo_status 0 1 }  { l_strB8_read fifo_data 1 1 } } }
	l_strC9 { ap_fifo {  { l_strC9_dout fifo_port_we 0 64 }  { l_strC9_empty_n fifo_status 0 1 }  { l_strC9_read fifo_data 1 1 } } }
	l_strSum10 { ap_fifo {  { l_strSum10_din fifo_port_we 1 64 }  { l_strSum10_full_n fifo_status 0 1 }  { l_strSum10_write fifo_data 1 1 } } }
}
