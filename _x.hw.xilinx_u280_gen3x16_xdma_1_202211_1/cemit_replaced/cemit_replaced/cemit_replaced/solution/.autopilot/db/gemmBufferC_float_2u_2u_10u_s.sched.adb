<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="17">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>gemmBufferC_float_2u_2u_10u_s</name>
		<module_structure>Sequential</module_structure>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>l_sum3</name>
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
					<bitwidth>64</bitwidth>
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
						<name>l_mat4</name>
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
			<count>8</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_3">
				<Value>
					<Obj>
						<type>0</type>
						<id>5</id>
						<name>l_bufferC</name>
						<fileName>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp</fileName>
						<fileDirectory>/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced</fileDirectory>
						<lineNumber>88</lineNumber>
						<contextFuncName>gemmBufferC&amp;lt;float, 2, 2, 10&amp;gt;</contextFuncName>
						<contextNormFuncName>gemmBufferC_float_2_2_10_s</contextNormFuncName>
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
											<first>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp</first>
											<second>gemmBufferC&amp;lt;float, 2, 2, 10&amp;gt;</second>
										</first>
										<second>88</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>l_bufferC</originalName>
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
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>15</item>
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
			<item class_id_reference="9" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>6</id>
						<name>l_bufferC_1</name>
						<fileName>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp</fileName>
						<fileDirectory>/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced</fileDirectory>
						<lineNumber>88</lineNumber>
						<contextFuncName>gemmBufferC&amp;lt;float, 2, 2, 10&amp;gt;</contextFuncName>
						<contextNormFuncName>gemmBufferC_float_2_2_10_s</contextNormFuncName>
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
											<first>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp</first>
											<second>gemmBufferC&amp;lt;float, 2, 2, 10&amp;gt;</second>
										</first>
										<second>88</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>l_bufferC</originalName>
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
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>16</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>7</id>
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
						<coreId>1966219308</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>18</item>
				</oprand_edges>
				<opcode>wait</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>8</id>
						<name>_ln0</name>
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
						<coreId>543976559</coreId>
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
					<item>77</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name>empty_55</name>
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
						<coreId>794829184</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>24</item>
					<item>75</item>
					<item>78</item>
				</oprand_edges>
				<opcode>wait</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>empty_56</name>
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
						<coreId>794729432</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>25</item>
					<item>76</item>
				</oprand_edges>
				<opcode>wait</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>_ln0</name>
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
						<coreId>796099168</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>27</item>
					<item>28</item>
					<item>29</item>
					<item>30</item>
					<item>74</item>
					<item>79</item>
					<item>80</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>_ln128</name>
						<fileName>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp</fileName>
						<fileDirectory>/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced</fileDirectory>
						<lineNumber>128</lineNumber>
						<contextFuncName>gemmBufferC&amp;lt;float, 2, 2, 10&amp;gt;</contextFuncName>
						<contextNormFuncName>gemmBufferC_float_2_2_10_s</contextNormFuncName>
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
											<first>/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp</first>
											<second>gemmBufferC&amp;lt;float, 2, 2, 10&amp;gt;</second>
										</first>
										<second>128</second>
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
						<coreId>0</coreId>
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
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>3</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_11">
				<Value>
					<Obj>
						<type>2</type>
						<id>14</id>
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
						<coreId>796099168</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_12">
				<Value>
					<Obj>
						<type>2</type>
						<id>19</id>
						<name>gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2</name>
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
						<coreId>1330007625</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:gemmBufferC&lt;float, 2u, 2u, 10u&gt;_Pipeline_VITIS_LOOP_93_1_VITIS_LOOP_94_2&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_13">
				<Value>
					<Obj>
						<type>2</type>
						<id>26</id>
						<name>gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_119_8</name>
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
						<coreId>1667853423</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:gemmBufferC&lt;float, 2u, 2u, 10u&gt;_Pipeline_VITIS_LOOP_119_8&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_14">
				<Obj>
					<type>3</type>
					<id>13</id>
					<name>gemmBufferC&lt;float, 2u, 2u, 10u&gt;</name>
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
					<coreId>795581248</coreId>
					<rtlModuleName></rtlModuleName>
				</Obj>
				<node_objs>
					<count>8</count>
					<item_version>0</item_version>
					<item>5</item>
					<item>6</item>
					<item>7</item>
					<item>8</item>
					<item>9</item>
					<item>10</item>
					<item>11</item>
					<item>12</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>17</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_15">
				<id>15</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>5</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_16">
				<id>16</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>6</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_17">
				<id>20</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_18">
				<id>21</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_19">
				<id>22</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_20">
				<id>23</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_21">
				<id>27</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_22">
				<id>28</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_23">
				<id>29</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_24">
				<id>30</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>74</id>
				<edge_type>4</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>75</id>
				<edge_type>4</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>9</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>76</id>
				<edge_type>4</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>77</id>
				<edge_type>4</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>78</id>
				<edge_type>4</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>9</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>79</id>
				<edge_type>4</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>80</id>
				<edge_type>4</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_32">
			<mId>1</mId>
			<mTag>gemmBufferC&lt;float, 2u, 2u, 10u&gt;</mTag>
			<mNormTag>gemmBufferC_float_2u_2u_10u_s</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>28</mMinLatency>
			<mMaxLatency>28</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="26" tracking_level="0" version="0">
		<count>8</count>
		<item_version>0</item_version>
		<item class_id="27" tracking_level="0" version="0">
			<first>5</first>
			<second class_id="28" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>6</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>7</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>8</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>9</first>
			<second>
				<first>2</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>3</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>11</first>
			<second>
				<first>3</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>4</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="29" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="30" tracking_level="0" version="0">
			<first>13</first>
			<second class_id="31" tracking_level="0" version="0">
				<first>0</first>
				<second>4</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="32" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</regions>
	<dp_fu_nodes class_id="33" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="34" tracking_level="0" version="0">
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
	<dp_mem_port_nodes class_id="35" tracking_level="0" version="0">
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
	<dp_port_io_nodes class_id="36" tracking_level="0" version="0">
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

