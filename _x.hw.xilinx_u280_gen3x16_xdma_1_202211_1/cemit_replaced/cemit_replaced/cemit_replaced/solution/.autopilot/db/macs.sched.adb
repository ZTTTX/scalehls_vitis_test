<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="17">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>macs</name>
		<module_structure>Dataflow</module_structure>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>l_dataA_0</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>791819130</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>34</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>l_dataB_0</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>791819130</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>l_dataB_1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>793134864</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>l_sum_0</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>793167296</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>l_mul</name>
						<fileName>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp</fileName>
						<fileDirectory>/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced</fileDirectory>
						<lineNumber>226</lineNumber>
						<contextFuncName>macs</contextFuncName>
						<contextNormFuncName>macs</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp</first>
											<second>macs</second>
										</first>
										<second>226</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>l_mul</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1966219308</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>18</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>_ln227</name>
						<fileName>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp</fileName>
						<fileDirectory>/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced</fileDirectory>
						<lineNumber>227</lineNumber>
						<contextFuncName>macs</contextFuncName>
						<contextNormFuncName>macs</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp</first>
											<second>macs</second>
										</first>
										<second>227</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1966219308</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>20</item>
					<item>21</item>
					<item>22</item>
					<item>23</item>
					<item>24</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>14</id>
						<name>_ln228</name>
						<fileName>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp</fileName>
						<fileDirectory>/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced</fileDirectory>
						<lineNumber>228</lineNumber>
						<contextFuncName>macs</contextFuncName>
						<contextNormFuncName>macs</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp</first>
											<second>macs</second>
										</first>
										<second>228</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1966219308</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>26</item>
					<item>27</item>
					<item>28</item>
					<item>148</item>
					<item>149</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>_ln229</name>
						<fileName>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp</fileName>
						<fileDirectory>/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced</fileDirectory>
						<lineNumber>229</lineNumber>
						<contextFuncName>macs</contextFuncName>
						<contextNormFuncName>macs</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp</first>
											<second>macs</second>
										</first>
										<second>229</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1886999653</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>3</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_9">
				<Value>
					<Obj>
						<type>2</type>
						<id>17</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1966224160</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_10">
				<Value>
					<Obj>
						<type>2</type>
						<id>19</id>
						<name>muls</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1985966956</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:muls&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_11">
				<Value>
					<Obj>
						<type>2</type>
						<id>25</id>
						<name>adds</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>2015830126</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:adds&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_12">
				<Obj>
					<type>3</type>
					<id>16</id>
					<name>macs</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<control></control>
					<opType></opType>
					<implIndex></implIndex>
					<coreName></coreName>
					<isStorage>0</isStorage>
					<storageDepth>0</storageDepth>
					<coreId>792963680</coreId>
					<rtlModuleName></rtlModuleName>
				</Obj>
				<node_objs>
					<count>4</count>
					<item_version>0</item_version>
					<item>10</item>
					<item>13</item>
					<item>14</item>
					<item>15</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>11</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_13">
				<id>18</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_14">
				<id>20</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_15">
				<id>21</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_16">
				<id>22</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_17">
				<id>23</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_18">
				<id>24</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_19">
				<id>26</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>14</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_20">
				<id>27</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>14</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_21">
				<id>28</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>14</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_22">
				<id>148</id>
				<edge_type>4</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>14</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_23">
				<id>149</id>
				<edge_type>4</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>14</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_24">
			<mId>1</mId>
			<mTag>macs</mTag>
			<mNormTag>macs</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>-1</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_25">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>4</count>
					<item_version>0</item_version>
					<item class_id="25" tracking_level="1" version="0" object_id="_26">
						<name>l_dataA_0</name>
						<dir>0</dir>
						<type>0</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_27">
						<name>l_dataB_0</name>
						<dir>0</dir>
						<type>0</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_28">
						<name>l_dataB_1</name>
						<dir>1</dir>
						<type>0</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_29">
						<name>l_sum_0</name>
						<dir>1</dir>
						<type>0</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
				</port_list>
				<process_list class_id="27" tracking_level="0" version="0">
					<count>2</count>
					<item_version>0</item_version>
					<item class_id="28" tracking_level="1" version="0" object_id="_30">
						<type>0</type>
						<name>muls_U0</name>
						<ssdmobj_id>13</ssdmobj_id>
						<pins class_id="29" tracking_level="0" version="0">
							<count>3</count>
							<item_version>0</item_version>
							<item class_id="30" tracking_level="1" version="0" object_id="_31">
								<port class_id_reference="25" object_id="_32">
									<name>l_dataA_0</name>
									<dir>0</dir>
									<type>0</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_26"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id="31" tracking_level="1" version="0" object_id="_33">
									<type>0</type>
									<name>muls_U0</name>
									<ssdmobj_id>13</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="30" object_id="_34">
								<port class_id_reference="25" object_id="_35">
									<name>l_dataB_0</name>
									<dir>0</dir>
									<type>0</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_27"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_33"></inst>
							</item>
							<item class_id_reference="30" object_id="_36">
								<port class_id_reference="25" object_id="_37">
									<name>l_dataB_1</name>
									<dir>1</dir>
									<type>0</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_28"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_33"></inst>
							</item>
						</pins>
						<in_source_fork>1</in_source_fork>
						<in_sink_join>1</in_sink_join>
						<flag_in_gui>1</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_38">
						<type>0</type>
						<name>adds_U0</name>
						<ssdmobj_id>14</ssdmobj_id>
						<pins>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_39">
								<port class_id_reference="25" object_id="_40">
									<name>l_sum_0</name>
									<dir>1</dir>
									<type>0</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_29"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_41">
									<type>0</type>
									<name>adds_U0</name>
									<ssdmobj_id>14</ssdmobj_id>
								</inst>
							</item>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>1</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
				</process_list>
				<channel_list class_id="32" tracking_level="0" version="0">
					<count>1</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_42">
						<type>1</type>
						<name>l_mul</name>
						<ssdmobj_id>10</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>64</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_43">
								<port class_id_reference="25" object_id="_44">
									<name>in</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_33"></inst>
							</item>
						</source_list>
						<sink_list>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_45">
								<port class_id_reference="25" object_id="_46">
									<name>out</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id="-1"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_41"></inst>
							</item>
						</sink_list>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="36" tracking_level="0" version="0">
		<count>4</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>10</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>14</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>15</first>
			<second>
				<first>3</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="39" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="40" tracking_level="0" version="0">
			<first>16</first>
			<second class_id="41" tracking_level="0" version="0">
				<first>0</first>
				<second>3</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="42" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="1" version="0" object_id="_47">
			<region_name>macs</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</basic_blocks>
			<nodes>
				<count>11</count>
				<item_version>0</item_version>
				<item>5</item>
				<item>6</item>
				<item>7</item>
				<item>8</item>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
			<mDBIIViolationVec class_id="44" tracking_level="0" version="0">
				<count>0</count>
				<item_version>0</item_version>
			</mDBIIViolationVec>
		</item>
	</regions>
	<dp_fu_nodes class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="48" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core>
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

