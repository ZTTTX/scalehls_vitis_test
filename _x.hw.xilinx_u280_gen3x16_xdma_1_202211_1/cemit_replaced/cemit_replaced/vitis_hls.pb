
o
URunning '/opt/xilinx/vitis/v2022p2/Vitis_HLS/2022.2/bin/unwrapped/lnx64.o/vitis_hls'
*HLSZ200-10h px 
 
For user 'tz32' on host 'xacc-head-000-5.csl.illinois.edu' (Linux_x86_64 version 4.15.0-208-generic) on Wed Jun 14 16:03:38 CDT 2023
*HLSZ200-10h px 
3
On os Ubuntu 18.04.6 LTS
*HLSZ200-10h px 

In directory '/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced'
*HLSZ200-10h px 
D
)Sourcing Tcl script 'cemit_replaced.tcl'
*HLSZ200-150h px 
c
Running: %s
2001510*hls20
open_project cemit_replaced 2default:defaultZ200-1510h px 
¼
¡Creating and opening project '/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced/cemit_replaced'.
*HLSZ200-10h px 
^
Running: %s
2001510*hls2+
set_top cemit_replaced 2default:defaultZ200-1510h px 
¢
Running: %s
2001510*hls2î
Ùadd_files /mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp -cflags  -I /mnt/shared/home/tz32/scalehls_vitis_test/src -I /mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw 2default:defaultZ200-1510h px 

eAdding design file '/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp' to the project
*HLSZ200-10h px 
q
Running: %s
2001510*hls2>
*open_solution -flow_target vitis solution 2default:defaultZ200-1510h px 
Æ
«Creating and opening solution '/mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced/cemit_replaced/solution'.
*HLSZ200-10h px 
×
Using %sflow_target '%s'
2001505*hls2
 2default:default2
vitis2default:defaultZ200-1505h pxeFor help on HLS 200-1505 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=200-1505.html 
°
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default26
"config_interface -m_axi_latency=642default:defaultZ200-435h px 
¼
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default2B
.config_interface -m_axi_alignment_byte_size=642default:defaultZ200-435h px 
¼
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default2B
.config_interface -m_axi_max_widen_bitwidth=5122default:defaultZ200-435h px 
®
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default24
 config_rtl -register_reset_num=32default:defaultZ200-435h px 
e
Running: %s
2001510*hls22
set_part xcu280-fsvh2892-2L-e 2default:defaultZ200-1510h px 
l
Setting target device to '%s'2001611*hls2(
xcu280-fsvh2892-2L-e2default:defaultZ200-1611h px 
x
Running: %s
2001510*hls2E
1create_clock -period 300.000000MHz -name default 2default:defaultZ200-1510h px 
P
5Setting up clock 'default' with a period of 3.333ns.
*SYNZ201-201h px 
l
Running: %s
2001510*hls29
%config_dataflow -strict_mode warning 2default:defaultZ200-1510h px 
m
Running: %s
2001510*hls2:
&config_export -deadlock_detection sim 2default:defaultZ200-1510h px 
ñ
cThe '%s' command is deprecated and will be removed in a future release. Use %s as its replacement.
200483*hls25
!config_export -deadlock_detection2default:default22
config_rtl -deadlock_detection2default:defaultZ200-483h px 
É
1Replacing '%s' with '%s' in current solution file2001907*hls29
%config_export -deadlock_detection=sim2default:default26
"config_rtl -deadlock_detection=sim2default:defaultZ200-1907h px 
s
Running: %s
2001510*hls2@
,config_interface -m_axi_conservative_mode=1 2default:defaultZ200-1510h px 
f
Running: %s
2001510*hls23
config_interface -m_axi_addr64 2default:defaultZ200-1510h px 
p
Running: %s
2001510*hls2=
)config_interface -m_axi_auto_max_ports=0 2default:defaultZ200-1510h px 
w
Running: %s
2001510*hls2D
0config_export -format xo -ipname cemit_replaced 2default:defaultZ200-1510h px 
É
1Replacing '%s' with '%s' in current solution file2001907*hls29
%config_export -deadlock_detection=sim2default:default26
"config_rtl -deadlock_detection=sim2default:defaultZ200-1907h px 
U
Running: %s
2001510*hls2"
csynth_design 2default:defaultZ200-1510h px 
Å
©Finished File checks and directory preparation: CPU user time: 0.02 seconds. CPU system time: 0 seconds. Elapsed time: 0.02 seconds; current allocated memory: 1.070 GB.
*HLSZ200-111h px 
x
^Analyzing design file '/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp' ... 
*HLSZ200-10h px 
±
'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:164:9)
*HLSZ207-5527h px 
±
'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:167:9)
*HLSZ207-5527h px 
±
'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:171:9)
*HLSZ207-5527h px 
±
'Resource pragma' is deprecated, use 'bind_op/bind_storage pragma' instead (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:173:9)
*HLSZ207-5527h px 
þ
üSince the only kind of statements allowed in a canonical dataflow region are variable declarations and function calls, the compiler may not be able to correctly handle the region (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:124:9)
*HLSZ214-114h pxcFor help on HLS 214-114 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-114.html 
×
ÕEither use an argument of the function or declare the variable inside the dataflow loop body (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:74:67)
*HLSZ214-113h pxcFor help on HLS 214-113 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-113.html 
¬
ªSince the only kind of statements allowed in a canonical dataflow region are variable declarations and function calls, the compiler may not be able to correctly handle the region (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:65:9)
*HLSZ214-114h pxcFor help on HLS 214-114 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-114.html 
¨
2Dataflow form checks found %s issue(s) in file %s
200471*hls2
32default:default2T
@/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp2default:defaultZ200-471h pxcFor help on HLS 200-471 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=200-471.html 
°
unused parameter 'p_Idx' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:230:32)
*HLSZ207-5292h px 
°
unused parameter 'p_Idx' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:238:38)
*HLSZ207-5292h px 

unused parameter 'p_n' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gbmv.hpp:38:30)
*HLSZ207-5292h px 

unused parameter 'p_k' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm.hpp:178:30)
*HLSZ207-5292h px 

unused parameter 'p_k' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm.hpp:199:30)
*HLSZ207-5292h px 
Ë
¯Finished Source Code Analysis and Preprocessing: CPU user time: 33.85 seconds. CPU system time: 2.63 seconds. Elapsed time: 36.48 seconds; current allocated memory: 1.084 GB.
*HLSZ200-111h px 
m
/Using interface defaults for '%s' flow target.
200777*hls2
Vitis2default:defaultZ200-777h px 
§
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'void xf::blas::gemmMatAMover<float, 2u, 2u>(float*, unsigned int, unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:45:28)
*HLSZ214-131h px 
´
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'void xf::blas::gemmMatAMover<float, 2u, 2u>(float*, unsigned int, unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:48:2)
*HLSZ214-131h px 
§
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'void xf::blas::gemmMatBMover<float, 2u, 2u>(float*, unsigned int, unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:79:28)
*HLSZ214-131h px 
´
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'void xf::blas::gemmMatBMover<float, 2u, 2u>(float*, unsigned int, unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:82:2)
*HLSZ214-131h px 

ëInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'void xf::blas::readVec2Stream<float, 2u>(float*, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:128:44)
*HLSZ214-131h px 

ùInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'void xf::blas::readVec2Stream<float, 2u>(float*, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:130:13)
*HLSZ214-131h px 
Á
¥Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::constructor(ap_uint<64> const&)' into 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:103:2)
*HLSZ214-131h px 
à
ÄInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int) const' into 'xf::blas::WideType<float, 2u, 32u, void>::constructor(xf::blas::WideType<float, 2u, 32u, void> const&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:97:13)
*HLSZ214-131h px 
ú
ÞInlining function 'xf::blas::WideType<float, 2u, 32u, void>::constructor(xf::blas::WideType<float, 2u, 32u, void> const&)' into 'xf::blas::WideType<float, 2u, 32u, void>::WideType(xf::blas::WideType<float, 2u, 32u, void> const&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:90:2)
*HLSZ214-131h px 
ÿ
ãInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(xf::blas::WideType<float, 2u, 32u, void> const&)' into 'xf::blas::TaggedWideType<float, 2u>::TaggedWideType(xf::blas::WideType<float, 2u, 32u, void>, bool, bool)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:576:11)
*HLSZ214-131h px 
§
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::constructor(float)' into 'xf::blas::WideType<float, 2u, 32u, void>::WideType(float)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:117:2)
*HLSZ214-131h px 
«
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::tagAB(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:274:21)
*HLSZ214-131h px 

Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(float)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::tagAB(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:287:42)
*HLSZ214-131h px 
È
¬Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(xf::blas::WideType<float, 2u, 32u, void> const&)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::tagAB(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:278:46)
*HLSZ214-131h px 
¡
Inlining function 'xf::blas::WideType<bool, 2u, 8u, void>::constructor(bool)' into 'xf::blas::WideType<bool, 2u, 8u, void>::WideType(bool)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:117:2)
*HLSZ214-131h px 
­
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'xf::blas::TaggedWideType<float, 2u>::TaggedWideType(ap_uint<66> const&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:562:5)
*HLSZ214-131h px 
À
¤Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' into 'xf::blas::TaggedWideType<float, 2u>::TaggedWideType(ap_uint<66> const&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:563:17)
*HLSZ214-131h px 
¶
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'xf::blas::TriangSrl<float, 2u>::shift(xf::blas::WideType<float, 2u, 32u, void>)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:623:23)
*HLSZ214-131h px 
Ã
§Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::TriangSrl<float, 2u>::shift(xf::blas::WideType<float, 2u, 32u, void>)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:627:2)
*HLSZ214-131h px 
Ä
¨Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::TriangSrl<float, 2u>::shift(xf::blas::WideType<float, 2u, 32u, void>)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:627:33)
*HLSZ214-131h px 
²
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::TaggedWideType<float, 2u>::operator[](unsigned int)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:584:10)
*HLSZ214-131h px 

üInlining function 'xf::blas::TriangSrl<float, 2u>::TriangSrl()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:242:46)
*HLSZ214-131h px 
£
Inlining function 'xf::blas::WideType<bool, 2u, 8u, void>::WideType(bool)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:243:34)
*HLSZ214-131h px 
­
Inlining function 'xf::blas::WideType<bool, 2u, 8u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:263:37)
*HLSZ214-131h px 
ª
Inlining function 'xf::blas::TaggedWideType<float, 2u>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:262:35)
*HLSZ214-131h px 

øInlining function 'xf::blas::TriangSrl<float, 2u>::clear()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:244:14)
*HLSZ214-131h px 
 
Inlining function 'xf::blas::WideType<bool, 2u, 8u, void>::shift(bool)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:256:18)
*HLSZ214-131h px 
¼
 Inlining function 'xf::blas::TriangSrl<float, 2u>::shift(xf::blas::WideType<float, 2u, 32u, void>)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:255:38)
*HLSZ214-131h px 
Ð
´Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(xf::blas::WideType<float, 2u, 32u, void> const&)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:255:44)
*HLSZ214-131h px 
³
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:251:29)
*HLSZ214-131h px 

þInlining function 'xf::blas::WideType<float, 2u, 32u, void>::shift(float)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:134:20)
*HLSZ214-131h px 

òInlining function 'xf::blas::TriangSrl<float, 2u>::TriangSrl()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:93:49)
*HLSZ214-131h px 
¦
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:127:17)
*HLSZ214-131h px 
¦
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:127:28)
*HLSZ214-131h px 
³
Inlining function 'xf::blas::TriangSrl<float, 2u>::shift(xf::blas::WideType<float, 2u, 32u, void>)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:124:27)
*HLSZ214-131h px 
Ç
«Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(xf::blas::WideType<float, 2u, 32u, void> const&)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:124:33)
*HLSZ214-131h px 
¦
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:121:17)
*HLSZ214-131h px 
¦
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:121:61)
*HLSZ214-131h px 
¦
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:121:49)
*HLSZ214-131h px 

üInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:110:26)
*HLSZ214-131h px 

üInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:109:26)
*HLSZ214-131h px 

üInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:108:26)
*HLSZ214-131h px 

îInlining function 'xf::blas::TriangSrl<float, 2u>::clear()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:94:14)
*HLSZ214-131h px 
ª
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:105:36)
*HLSZ214-131h px 

Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(float)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:99:19)
*HLSZ214-131h px 
Ü
ÀInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:190:48)
*HLSZ214-131h px 
á
ÅInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(float)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:196:22)
*HLSZ214-131h px 
ê
ÎInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:214:21)
*HLSZ214-131h px 
ê
ÎInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:209:38)
*HLSZ214-131h px 
î
ÒInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:207:42)
*HLSZ214-131h px 
ê
ÎInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:203:33)
*HLSZ214-131h px 
î
ÒInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:200:23)
*HLSZ214-131h px 
ü
àInlining function 'xf::blas::WideType<float, 2u, 32u, void>::shift(float)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:185:20)
*HLSZ214-131h px 
ñ
ÕInlining function 'xf::blas::TriangSrl<float, 2u>::TriangSrl()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:145:49)
*HLSZ214-131h px 

ìInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:178:17)
*HLSZ214-131h px 

ìInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:178:28)
*HLSZ214-131h px 

ùInlining function 'xf::blas::TriangSrl<float, 2u>::shift(xf::blas::WideType<float, 2u, 32u, void>)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:175:27)
*HLSZ214-131h px 
©
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(xf::blas::WideType<float, 2u, 32u, void> const&)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:175:33)
*HLSZ214-131h px 

ìInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:172:17)
*HLSZ214-131h px 

ìInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:172:61)
*HLSZ214-131h px 

ìInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:172:49)
*HLSZ214-131h px 
ú
ÞInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:161:26)
*HLSZ214-131h px 
ú
ÞInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:160:26)
*HLSZ214-131h px 
ú
ÞInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:159:26)
*HLSZ214-131h px 

ðInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:157:36)
*HLSZ214-131h px 
í
ÑInlining function 'xf::blas::TriangSrl<float, 2u>::clear()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:146:14)
*HLSZ214-131h px 
ÿ
ãInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(float)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:151:19)
*HLSZ214-131h px 

äInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' into 'void xf::blas::gemmBufferC<float, 2u, 2u, 10u>(unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:108:36)
*HLSZ214-131h px 
û
ßInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'void xf::blas::gemmBufferC<float, 2u, 2u, 10u>(unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:136:2)
*HLSZ214-131h px 
î
ÒInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'void xf::blas::gemmBufferC<float, 2u, 2u, 10u>(unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:133:28)
*HLSZ214-131h px 
ü
àInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'void xf::blas::gemmBufferC<float, 2u, 2u, 10u>(unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:111:47)
*HLSZ214-131h px 
ü
àInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'void xf::blas::gemmBufferC<float, 2u, 2u, 10u>(unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:124:21)
*HLSZ214-131h px 
ü
àInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'void xf::blas::gemmBufferC<float, 2u, 2u, 10u>(unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:123:59)
*HLSZ214-131h px 
î
ÒInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'void xf::blas::gemmBufferC<float, 2u, 2u, 10u>(unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:120:43)
*HLSZ214-131h px 

äInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' into 'void xf::blas::gemmBufferC<float, 2u, 2u, 10u>(unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:119:36)
*HLSZ214-131h px 
Ê
®Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'void xf::blas::scal<float, 2u, unsigned int>(unsigned int, float, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/scal.hpp:61:37)
*HLSZ214-131h px 
Ê
®Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'void xf::blas::scal<float, 2u, unsigned int>(unsigned int, float, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/scal.hpp:62:44)
*HLSZ214-131h px 
Ø
¼Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'void xf::blas::scal<float, 2u, unsigned int>(unsigned int, float, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/scal.hpp:65:13)
*HLSZ214-131h px 
Ø
¼Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'void xf::blas::scal<float, 2u, unsigned int>(unsigned int, float, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/scal.hpp:65:35)
*HLSZ214-131h px 
Ü
ÀInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' into 'void xf::blas::scal<float, 2u, unsigned int>(unsigned int, float, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/scal.hpp:63:18)
*HLSZ214-131h px 
µ
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' into 'void xf::blas::axpy<float, 2u, unsigned int>(unsigned int, float, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:64:43)
*HLSZ214-131h px 
±
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'void xf::blas::axpy<float, 2u, unsigned int>(unsigned int, float, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:72:13)
*HLSZ214-131h px 
±
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'void xf::blas::axpy<float, 2u, unsigned int>(unsigned int, float, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:70:34)
*HLSZ214-131h px 
±
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'void xf::blas::axpy<float, 2u, unsigned int>(unsigned int, float, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:69:23)
*HLSZ214-131h px 
£
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'void xf::blas::axpy<float, 2u, unsigned int>(unsigned int, float, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:66:44)
*HLSZ214-131h px 
µ
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' into 'void xf::blas::axpy<float, 2u, unsigned int>(unsigned int, float, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:65:50)
*HLSZ214-131h px 

ìInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType()' into 'void xf::blas::writeStream2Vec<float, 2u>(hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, unsigned int, float*)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:157:44)
*HLSZ214-131h px 

úInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator[](unsigned int)' into 'void xf::blas::writeStream2Vec<float, 2u>(hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, unsigned int, float*)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:160:43)
*HLSZ214-131h px 

þInlining function 'xf::blas::WideType<float, 2u, 32u, void>::WideType(ap_uint<64> const&)' into 'void xf::blas::writeStream2Vec<float, 2u>(hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, unsigned int, float*)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:158:17)
*HLSZ214-131h px 
þ
âAdding 'l_A' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:250:24)
*HLSZ214-377h px 

ëAdding 'l_taggedValA' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:278:33)
*HLSZ214-377h px 

íAdding 'l_taggedValA19' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:287:29)
*HLSZ214-377h px 

æAdding 'ref.tmp' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:102:9)
*HLSZ214-377h px 
ÿ
ãAdding 'l_val' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 
þ
âAdding 'l_y' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:102:9)
*HLSZ214-377h px 
ý
áAdding 'l_r' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 
þ
âAdding 'l_x' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:102:9)
*HLSZ214-377h px 

äAdding 'l_valY' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 

äAdding 'l_valX' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 

åAdding 'l_out75' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 

äAdding 'l_sum' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:102:9)
*HLSZ214-377h px 

åAdding 'l_aSlr' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:116:9)
*HLSZ214-377h px 

éAdding 'l_bWideVal' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:102:9)
*HLSZ214-377h px 
ÿ
ãAdding 'l_mul' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 

äAdding 'l_cVec' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 

äAdding 'l_mVec' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 

åAdding 'agg.tmp' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:89:9)
*HLSZ214-377h px 

çAdding 'ref.tmp16' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 
ÿ
ãAdding 'l_Tc' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:619:9)
*HLSZ214-377h px 

äAdding 'l_mul' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:102:9)
*HLSZ214-377h px 

æAdding 'l_mul16' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:102:9)
*HLSZ214-377h px 

æAdding 'ref.tmp' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:116:9)
*HLSZ214-377h px 
ÿ
ãAdding 'l_sum' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 

çAdding 'ref.tmp17' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 
þ
âAdding 'l_B' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:102:9)
*HLSZ214-377h px 

åAdding 'l_bvec1' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 
ÿ
ãAdding 'l_Tf' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:116:9)
*HLSZ214-377h px 
ÿ
ãAdding 'l_Tb' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:619:9)
*HLSZ214-377h px 

èAdding 'agg.tmp20' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:116:9)
*HLSZ214-377h px 

åAdding 'l_valA' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:102:9)
*HLSZ214-377h px 
ý
áAdding 'l_B' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 
ý
áAdding 'l_A' into disaggregation list because there's array-partition pragma applied on the struct field (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:84:9)
*HLSZ214-377h px 
¤
¢Disaggregating variable 'l_A' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:45:28)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
¤
¢Disaggregating variable 'l_B' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:79:28)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
¥
£Disaggregating variable 'l_val' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:128:44)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
¤
¢Disaggregating variable 'l_taggedValA19' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:287:29)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
ª
¨Disaggregating variable 'l_taggedValA19.m_Val' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:287:29)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
£
"Disaggregating variable 'agg.tmp'
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
¢
 Disaggregating variable 'l_taggedValA' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:278:33)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
¨
¦Disaggregating variable 'l_taggedValA.m_Val' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:278:33)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_valA' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:274:12)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
£
"Disaggregating variable 'ref.tmp'
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'agg.tmp' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:621:53)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
£
"Disaggregating variable 'l_bvec1'
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_B' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:251:23)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_A' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:250:18)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_A.m_Val' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:250:18)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_Tf' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:243:27)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_Tb' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:242:46)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
 
Disaggregating variable 'ref.tmp17' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:623:23)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_mVec' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:110:26)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_cVec' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:109:26)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_mul' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:108:26)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
 
Disaggregating variable 'l_bWideVal' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:105:23)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_aSlr' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:99:19)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_Tc' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:93:49)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_mul16' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:207:34)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_mul' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:200:15)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_sum' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:190:48)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
 
Disaggregating variable 'ref.tmp16' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:623:23)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_mVec' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:161:26)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_cVec' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:160:26)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_mul' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:159:26)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
 
Disaggregating variable 'l_bWideVal' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:157:23)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_aSlr' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:151:19)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_Tc' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:145:49)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
©
§Disaggregating variable 'l_out75' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:133:28)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
§
¥Disaggregating variable 'l_sum' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:108:28)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_valY' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/scal.hpp:62:44)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_valX' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/scal.hpp:61:37)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_r' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:66:44)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_y' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:65:44)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 

Disaggregating variable 'l_x' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:64:37)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
¥
£Disaggregating variable 'l_val' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:157:44)
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
¥
$Disaggregating variable 'agg.tmp20'
*HLSZ214-210h pxcFor help on HLS 214-210 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=214-210.html 
ê
ÎLoop 'VITIS_LOOP_107_1' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:107:20)
*HLSZ214-291h px 
ó
×Loop 'VITIS_LOOP_159_2' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:159:27)
*HLSZ214-291h px 
Ù
½Loop 'VITIS_LOOP_67_2' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:67:26)
*HLSZ214-291h px 
Ù
½Loop 'VITIS_LOOP_64_2' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/scal.hpp:64:26)
*HLSZ214-291h px 
õ
ÙLoop 'VITIS_LOOP_134_9' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:134:27)
*HLSZ214-291h px 
õ
ÙLoop 'VITIS_LOOP_109_3' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:109:31)
*HLSZ214-291h px 
é
ÍLoop 'VITIS_LOOP_171_3' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:171:31)
*HLSZ214-291h px 
è
ÌLoop 'VITIS_LOOP_95_1' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:95:19)
*HLSZ214-291h px 
è
ÌLoop 'TRIANGSRL_SHIFT' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:625:9)
*HLSZ214-291h px 
é
ÍLoop 'VITIS_LOOP_177_4' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:177:31)
*HLSZ214-291h px 
è
ÌLoop 'WIDE_TYPE_SHIFT' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:150:9)
*HLSZ214-291h px 
é
ÍLoop 'VITIS_LOOP_202_3' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:202:35)
*HLSZ214-291h px 
é
ÍLoop 'VITIS_LOOP_206_4' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:206:35)
*HLSZ214-291h px 
é
ÍLoop 'VITIS_LOOP_208_5' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:208:39)
*HLSZ214-291h px 
é
ÍLoop 'VITIS_LOOP_213_6' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:213:35)
*HLSZ214-291h px 
é
ÍLoop 'VITIS_LOOP_120_3' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:120:31)
*HLSZ214-291h px 
é
ÍLoop 'VITIS_LOOP_126_4' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:126:31)
*HLSZ214-291h px 
é
ÍLoop 'VITIS_LOOP_259_2' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:259:31)
*HLSZ214-291h px 
ó
×Loop 'VITIS_LOOP_129_2' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:129:27)
*HLSZ214-291h px 
ó
×Loop 'VITIS_LOOP_80_4' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:80:34)
*HLSZ214-291h px 
ó
×Loop 'VITIS_LOOP_46_4' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:46:34)
*HLSZ214-291h px 
ê
ÎLoop 'VITIS_LOOP_129_1' is marked as complete unroll implied by the pipeline pragma (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:129:27)
*HLSZ214-291h px 

ïUnrolling loop 'VITIS_LOOP_107_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:107:20) in function 'xf::blas::writeStream2Vec<float, 2u>' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:149:0)
*HLSZ214-186h px 

øUnrolling loop 'VITIS_LOOP_159_2' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:159:27) in function 'xf::blas::writeStream2Vec<float, 2u>' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:149:0)
*HLSZ214-186h px 
õ
ÙUnrolling loop 'VITIS_LOOP_107_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:107:20) in function 'xf::blas::axpy<float, 2u, unsigned int>' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:57:0)
*HLSZ214-186h px 
ä
ÈUnrolling loop 'VITIS_LOOP_67_2' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:67:26) in function 'xf::blas::axpy<float, 2u, unsigned int>' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:57:0)
*HLSZ214-186h px 
õ
ÙUnrolling loop 'VITIS_LOOP_107_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:107:20) in function 'xf::blas::scal<float, 2u, unsigned int>' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/scal.hpp:54:0)
*HLSZ214-186h px 
ä
ÈUnrolling loop 'VITIS_LOOP_64_2' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/scal.hpp:64:26) in function 'xf::blas::scal<float, 2u, unsigned int>' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/scal.hpp:54:0)
*HLSZ214-186h px 

Unrolling loop 'VITIS_LOOP_134_9' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:134:27) in function 'xf::blas::gemmBufferC<float, 2u, 2u, 10u>' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:94:0)
*HLSZ214-186h px 

õUnrolling loop 'VITIS_LOOP_107_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:107:20) in function 'xf::blas::gemmBufferC<float, 2u, 2u, 10u>' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:94:0)
*HLSZ214-186h px 

Unrolling loop 'VITIS_LOOP_109_3' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:109:31) in function 'xf::blas::gemmBufferC<float, 2u, 2u, 10u>' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:94:0)
*HLSZ214-186h px 

úUnrolling loop 'VITIS_LOOP_69_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:69:26) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::process' completely with a factor of 1 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:52:0)
*HLSZ214-186h px 

ûUnrolling loop 'VITIS_LOOP_107_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:107:20) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:139:0)
*HLSZ214-186h px 

úUnrolling loop 'VITIS_LOOP_171_3' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:171:31) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:139:0)
*HLSZ214-186h px 

ùUnrolling loop 'VITIS_LOOP_95_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:95:19) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:139:0)
*HLSZ214-186h px 

ùUnrolling loop 'TRIANGSRL_SHIFT' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:625:9) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:139:0)
*HLSZ214-186h px 

úUnrolling loop 'VITIS_LOOP_177_4' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:177:31) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:139:0)
*HLSZ214-186h px 

ùUnrolling loop 'WIDE_TYPE_SHIFT' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:150:9) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 1 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:139:0)
*HLSZ214-186h px 

ûUnrolling loop 'VITIS_LOOP_121_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:121:20) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:139:0)
*HLSZ214-186h px 

ûUnrolling loop 'VITIS_LOOP_107_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:107:20) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:189:0)
*HLSZ214-186h px 

úUnrolling loop 'VITIS_LOOP_202_3' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:202:35) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:189:0)
*HLSZ214-186h px 

úUnrolling loop 'VITIS_LOOP_206_4' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:206:35) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds' completely with a factor of 3 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:189:0)
*HLSZ214-186h px 

úUnrolling loop 'VITIS_LOOP_208_5' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:208:39) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:189:0)
*HLSZ214-186h px 

úUnrolling loop 'VITIS_LOOP_213_6' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:213:35) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:189:0)
*HLSZ214-186h px 

úUnrolling loop 'VITIS_LOOP_107_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:107:20) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:87:0)
*HLSZ214-186h px 

ùUnrolling loop 'VITIS_LOOP_120_3' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:120:31) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:87:0)
*HLSZ214-186h px 

øUnrolling loop 'VITIS_LOOP_95_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:95:19) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:87:0)
*HLSZ214-186h px 

øUnrolling loop 'TRIANGSRL_SHIFT' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:625:9) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:87:0)
*HLSZ214-186h px 

ùUnrolling loop 'VITIS_LOOP_126_4' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:126:31) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:87:0)
*HLSZ214-186h px 

øUnrolling loop 'WIDE_TYPE_SHIFT' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:150:9) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 1 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:87:0)
*HLSZ214-186h px 

úUnrolling loop 'VITIS_LOOP_121_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:121:20) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:87:0)
*HLSZ214-186h px 
 
Unrolling loop 'VITIS_LOOP_107_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:107:20) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:241:0)
*HLSZ214-186h px 

Unrolling loop 'VITIS_LOOP_95_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:95:19) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:241:0)
*HLSZ214-186h px 

Unrolling loop 'TRIANGSRL_SHIFT' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:625:9) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:241:0)
*HLSZ214-186h px 

Unrolling loop 'WIDE_TYPE_SHIFT' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:150:9) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray' completely with a factor of 1 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:241:0)
*HLSZ214-186h px 

Unrolling loop 'VITIS_LOOP_259_2' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:259:31) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:241:0)
*HLSZ214-186h px 
 
Unrolling loop 'VITIS_LOOP_121_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:121:20) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:241:0)
*HLSZ214-186h px 

õUnrolling loop 'VITIS_LOOP_107_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:107:20) in function 'xf::blas::TaggedWideType<float, 2u>::TaggedWideType' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:562:0)
*HLSZ214-186h px 

üUnrolling loop 'VITIS_LOOP_107_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:107:20) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::tagAB' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:270:0)
*HLSZ214-186h px 

úUnrolling loop 'VITIS_LOOP_95_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:95:19) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::tagAB' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:270:0)
*HLSZ214-186h px 

óUnrolling loop 'VITIS_LOOP_95_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:95:19) in function 'xf::blas::TaggedWideType<float, 2u>::TaggedWideType' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:576:0)
*HLSZ214-186h px 

÷Unrolling loop 'VITIS_LOOP_129_2' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:129:27) in function 'xf::blas::readVec2Stream<float, 2u>' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:120:0)
*HLSZ214-186h px 

ûUnrolling loop 'VITIS_LOOP_80_4' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:80:34) in function 'xf::blas::gemmMatBMover<float, 2u, 2u>' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:61:0)
*HLSZ214-186h px 

ûUnrolling loop 'VITIS_LOOP_46_4' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:46:34) in function 'xf::blas::gemmMatAMover<float, 2u, 2u>' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:27:0)
*HLSZ214-186h px 
¢
Unrolling loop 'VITIS_LOOP_129_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:129:27) in function 'xf::blas::WideType<float, 2u, 32u, void>::operator ap_uint<64> const' completely with a factor of 2 (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:127:0)
*HLSZ214-186h px 
Â
¦Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator ap_uint<64> const() (.3.6.13)' into 'void xf::blas::gemmMatAMover<float, 2u, 2u>(float*, unsigned int, unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:27:0)
*HLSZ214-178h px 
Â
¦Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator ap_uint<64> const() (.3.6.13)' into 'void xf::blas::gemmMatBMover<float, 2u, 2u>(float*, unsigned int, unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:61:0)
*HLSZ214-178h px 
¢
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator ap_uint<64> const() (.3.6.13)' into 'void xf::blas::readVec2Stream<float, 2u>(float*, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:120:0)
*HLSZ214-178h px 
Ã
§Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator ap_uint<64> const() (.3.6.13)' into 'xf::blas::TaggedWideType<float, 2u>::operator ap_uint<66> const()' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:567:0)
*HLSZ214-178h px 
Ó
·Inlining function 'xf::blas::TaggedWideType<float, 2u>::TaggedWideType(xf::blas::WideType<float, 2u, 32u, void>, bool, bool) (.35)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::tagAB(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:270:0)
*HLSZ214-178h px 
¥
Inlining function 'xf::blas::TaggedWideType<float, 2u>::operator ap_uint<66> const()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::tagAB(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:270:0)
*HLSZ214-178h px 
³
Inlining function 'xf::blas::TaggedWideType<float, 2u>::TaggedWideType(ap_uint<66> const&)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:241:0)
*HLSZ214-178h px 

þInlining function 'xf::blas::TaggedWideType<float, 2u>::getExit()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:241:0)
*HLSZ214-178h px 

ÿInlining function 'xf::blas::TaggedWideType<float, 2u>::getFlush()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:241:0)
*HLSZ214-178h px 
¼
 Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator ap_uint<64> const() (.3.6.13)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:241:0)
*HLSZ214-178h px 
®
Inlining function 'xf::blas::DualTaggedType<float, 32u>::operator ap_uint<34> const()' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray(hls::stream<ap_uint<66>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<34>, 0>*, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:241:0)
*HLSZ214-178h px 
ª
Inlining function 'xf::blas::DualTaggedType<float, 32u>::DualTaggedType(ap_uint<34> const&)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:87:0)
*HLSZ214-178h px 
²
Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator ap_uint<64> const() (.3.6.13)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:87:0)
*HLSZ214-178h px 
÷
ÛInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator ap_uint<64> const() (.3.6.13)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:189:0)
*HLSZ214-178h px 

ñInlining function 'xf::blas::DualTaggedType<float, 32u>::DualTaggedType(ap_uint<34> const&)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:139:0)
*HLSZ214-178h px 

ùInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator ap_uint<64> const() (.3.6.13)' into 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls(hls::stream<ap_uint<34>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:139:0)
*HLSZ214-178h px 

ñInlining function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::SystolicArray(unsigned int)' into 'xf::blas::Gemm<float, 1024u, 2u, 2u, float>::gemm(hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, hls::stream<ap_uint<64>, 0>&, unsigned int)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm.hpp:149:0)
*HLSZ214-178h px 

ìInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator ap_uint<64> const() (.3.6.13)' into 'void xf::blas::gemmBufferC<float, 2u, 2u, 10u>(unsigned int, unsigned int, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:94:0)
*HLSZ214-178h px 
å
ÉInlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator ap_uint<64> const() (.3.6.13)' into 'void xf::blas::scal<float, 2u, unsigned int>(unsigned int, float, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/scal.hpp:54:0)
*HLSZ214-178h px 
¾
¢Inlining function 'xf::blas::WideType<float, 2u, 32u, void>::operator ap_uint<64> const() (.3.6.13)' into 'void xf::blas::axpy<float, 2u, unsigned int>(unsigned int, float, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&, hls::stream<xf::blas::WideType<float, 2u, (sizeof (float)) * (8), void>::t_TypeInt, 0>&)' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/axpy.hpp:57:0)
*HLSZ214-178h px 
ý
áInlining function 'forward_node2(float (*) [1][32][32], float (*) [1024])' into 'cemit_replaced(float (*) [1][32][32], float (*) [10], float (*) [10])' (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:155:0)
*HLSZ214-178h px 
ü
àInlining function 'forward_node0(float (*) [10], float*, float (*) [10])' into 'cemit_replaced(float (*) [1][32][32], float (*) [10], float (*) [10])' (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:155:0)
*HLSZ214-178h px 
Ð
´The program may have out of bound array access (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:111:45)
*HLSZ214-167h px 
Ð
´The program may have out of bound array access (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:136:13)
*HLSZ214-167h px 
ß
ÃApplying array_partition to 'l_Tb': Complete partitioning on dimension 1. (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:242:46)
*HLSZ214-248h px 
Þ
ÂApplying array_partition to 'l_Tc': Complete partitioning on dimension 1. (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:93:49)
*HLSZ214-248h px 
ß
ÃApplying array_partition to 'l_Tc': Complete partitioning on dimension 1. (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:145:49)
*HLSZ214-248h px 
ß
ÃApplying array_partition to 'l_sum': Complete partitioning on dimension 1. (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:54:24)
*HLSZ214-248h px 
á
ÅApplying array_partition to 'l_dataA': Complete partitioning on dimension 1. (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:57:19)
*HLSZ214-248h px 
á
ÅApplying array_partition to 'l_dataB': Complete partitioning on dimension 1. (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:61:22)
*HLSZ214-248h px 
ü
àApplying array_partition to 'l_bufferC': Cyclic partitioning with factor 2 on dimension 1. (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:100:16)
*HLSZ214-248h px 
ç
ËAggregating fifo (hls::stream) variable 'l_sum_0' with compact=bit mode in 64-bits (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:54:24)
*HLSZ214-241h px 
ç
ËAggregating fifo (hls::stream) variable 'l_sum_1' with compact=bit mode in 64-bits (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:54:24)
*HLSZ214-241h px 
é
ÍAggregating fifo (hls::stream) variable 'l_dataA_0' with compact=bit mode in 34-bits (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:57:19)
*HLSZ214-241h px 
é
ÍAggregating fifo (hls::stream) variable 'l_dataA_1' with compact=bit mode in 34-bits (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:57:19)
*HLSZ214-241h px 
é
ÍAggregating fifo (hls::stream) variable 'l_dataB_0' with compact=bit mode in 64-bits (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:61:22)
*HLSZ214-241h px 
é
ÍAggregating fifo (hls::stream) variable 'l_dataB_1' with compact=bit mode in 64-bits (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:61:22)
*HLSZ214-241h px 
á
ÅMultiple burst reads of length 5120 and bit width 64 has been inferred on bundle 'gmem'. These burst requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:60:25)
*HLSZ214-115h px 
ß
ÃMultiple burst writes of length 5 and bit width 64 has been inferred on bundle 'gmem'. These burst requests might be further partitioned into multiple requests during RTL generation, based on max_read_burst_length or max_write_burst_length settings. (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:33:22)
*HLSZ214-115h px 
Ç
«Finished Compiling Optimization and Transform: CPU user time: 7.81 seconds. CPU system time: 1.93 seconds. Elapsed time: 9.73 seconds; current allocated memory: 1.086 GB.
*HLSZ200-111h px 
ª
Finished Checking Pragmas: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0 seconds; current allocated memory: 1.086 GB.
*HLSZ200-111h px 
<
"Starting code transformations ...
*HLSZ200-10h px 
µ
Finished Standard Transforms: CPU user time: 0.4 seconds. CPU system time: 0.02 seconds. Elapsed time: 0.42 seconds; current allocated memory: 1.122 GB.
*HLSZ200-111h px 
8
Checking synthesizability ...
*HLSZ200-10h px 
¼
 Finished Checking Synthesizability: CPU user time: 0.69 seconds. CPU system time: 0.06 seconds. Elapsed time: 0.75 seconds; current allocated memory: 1.174 GB.
*HLSZ200-111h px 

íPipelining loop 'VITIS_LOOP_83_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/utils.hpp:83) in function 'xf::blas::Merge<hls::stream<ap_uint<64>, 0>, 2u>::merge' automatically.
*XFORMZ203-510h px 
±
Pipelining loop 'VITIS_LOOP_61_2' (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:61) in function 'forward_node1' automatically.
*XFORMZ203-510h px 
±
Pipelining loop 'VITIS_LOOP_66_3' (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:67) in function 'forward_node1' automatically.
*XFORMZ203-510h px 
³
Pipelining loop 'VITIS_LOOP_134_4' (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:135) in function 'forward_node1' automatically.
*XFORMZ203-510h px 
´
Pipelining loop 'VITIS_LOOP_144_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:144) in function 'cemit_replaced' automatically.
*XFORMZ203-510h px 
²
Pipelining loop 'VITIS_LOOP_33_2' (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:33) in function 'cemit_replaced' automatically.
*XFORMZ203-510h px 
Î
°Changing loop 'Loop_VITIS_LOOP_60_1_proc' (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:61) to a process function for dataflow in function 'forward_node1'.
*XFORMZ203-721h px 
Î
°Changing loop 'Loop_VITIS_LOOP_66_3_proc' (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:67) to a process function for dataflow in function 'forward_node1'.
*XFORMZ203-721h px 
Ð
²Changing loop 'Loop_VITIS_LOOP_134_4_proc' (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:135) to a process function for dataflow in function 'forward_node1'.
*XFORMZ203-721h px 
ì
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
l_sum2default:default2|
h(/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm.hpp:214) 2default:defaultZ200-805h px 
ì
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
l_mat2default:default2|
h(/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm.hpp:214) 2default:defaultZ200-805h px 
î
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
l_betaC2default:default2|
h(/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm.hpp:214) 2default:defaultZ200-805h px 
û
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
l_aStr2default:default2
u(/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:53) 2default:defaultZ200-805h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
l_sum_02default:default2
 2default:defaultZ200-805h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
l_sum_12default:default2
 2default:defaultZ200-805h px 
û
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
l_bStr2default:default2
u(/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:61) 2default:defaultZ200-805h px 

¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
	l_dataB_12default:default2
 2default:defaultZ200-805h px 
û
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
l_mul2default:default2
v(/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:233) 2default:defaultZ200-805h px 
û
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
l_mul2default:default2
v(/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:226) 2default:defaultZ200-805h px 
Ë
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
l_strA2default:default2Z
F(/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:54) 2default:defaultZ200-805h px 
Ë
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
l_strB2default:default2Z
F(/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:55) 2default:defaultZ200-805h px 
Ë
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
l_strC2default:default2Z
F(/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:56) 2default:defaultZ200-805h px 
Í
¯An internal stream '%s' %swith default size can result in deadlock. Please consider resizing the stream using the directive 'set_directive_stream' or the 'HLS stream' pragma.
200805*hls2
l_strSum2default:default2Z
F(/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:57) 2default:defaultZ200-805h px 

þApplying dataflow to function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::macs' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:225:5), detected/extracted 2 process function(s): 
	 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls'
	 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds'.
*XFORMZ203-712h px 
¢
Applying dataflow to function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::macs.1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:232:5), detected/extracted 2 process function(s): 
	 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls.2'
	 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds.3'.
*XFORMZ203-712h px 
ä
ÆApplying dataflow to function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::process' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:53:5), detected/extracted 5 process function(s): 
	 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::tagAB'
	 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray'
	 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::macs'
	 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::macs.1'
	 'xf::blas::Merge<hls::stream<ap_uint<64>, 0>, 2u>::merge'.
*XFORMZ203-712h px 
É
«Applying dataflow to function 'xf::blas::Gemm<float, 1024u, 2u, 2u, float>::gemm' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm.hpp:155:5), detected/extracted 1 process function(s): 
	 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::process'.
*XFORMZ203-712h px 
Å
§Applying dataflow to function 'xf::blas::gemm<float, 1024u, 2u, 10u, unsigned int>' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm.hpp:214:1), detected/extracted 4 process function(s): 
	 'xf::blas::Gemm<float, 1024u, 2u, 2u, float>::gemm'
	 'xf::blas::gemmBufferC<float, 2u, 2u, 10u>'
	 'xf::blas::scal<float, 2u, unsigned int>'
	 'xf::blas::axpy<float, 2u, unsigned int>'.
*XFORMZ203-712h px 
£
Applying dataflow to function 'forward_node1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:46), detected/extracted 8 process function(s): 
	 'forward_node1_Loop_VITIS_LOOP_60_1_proc'
	 'forward_node1_Loop_VITIS_LOOP_66_3_proc'
	 'xf::blas::gemmMatAMover<float, 2u, 2u>'
	 'xf::blas::gemmMatBMover<float, 2u, 2u>'
	 'xf::blas::readVec2Stream<float, 2u>'
	 'xf::blas::gemm<float, 1024u, 2u, 10u, unsigned int>'
	 'xf::blas::writeStream2Vec<float, 2u>'
	 'forward_node1_Loop_VITIS_LOOP_134_4_proc'.
*XFORMZ203-712h px 
³
Performing if-conversion on hyperblock from (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:67:11) to (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:66:20) in function 'forward_node1_Loop_VITIS_LOOP_66_3_proc'... converting 3 basic blocks.
*XFORMZ203-401h px 
É
­Finished Loop, function and other optimizations: CPU user time: 1.14 seconds. CPU system time: 0.07 seconds. Elapsed time: 1.22 seconds; current allocated memory: 1.241 GB.
*HLSZ200-111h px 

ãFlattening a loop nest 'VITIS_LOOP_76_2' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:76:35) in function 'xf::blas::gemmMatBMover<float, 2u, 2u>'.
*XFORMZ203-541h px 

ãFlattening a loop nest 'VITIS_LOOP_42_2' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:42:35) in function 'xf::blas::gemmMatAMover<float, 2u, 2u>'.
*XFORMZ203-541h px 

èFlattening a loop nest 'VITIS_LOOP_105_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:105:32) in function 'xf::blas::gemmBufferC<float, 2u, 2u, 10u>'.
*XFORMZ203-541h px 

îFlattening a loop nest 'VITIS_LOOP_271_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:271:45) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::tagAB'.
*XFORMZ203-541h px 

÷Flattening a loop nest 'VITIS_LOOP_633_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:634:49) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::systolicArray'.
*XFORMZ203-541h px 

ðFlattening a loop nest 'VITIS_LOOP_633_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:634:49) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls.2'.
*XFORMZ203-541h px 

îFlattening a loop nest 'VITIS_LOOP_633_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/types.hpp:634:49) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::muls'.
*XFORMZ203-541h px 

ïFlattening a loop nest 'VITIS_LOOP_193_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:193:45) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds.3'.
*XFORMZ203-541h px 

íFlattening a loop nest 'VITIS_LOOP_193_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/gemm/systolicArray.hpp:193:45) in function 'xf::blas::SystolicArray<float, 1024u, 2u, 2u, float>::adds'.
*XFORMZ203-541h px 
Ç
©Flattening a loop nest 'VITIS_LOOP_60_1' (/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:61:31) in function 'forward_node1_Loop_VITIS_LOOP_60_1_proc'.
*XFORMZ203-541h px 

-Inferring partial write operation for '%s' %s200472*hls2
p_out2default:default2
(/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/vecMoverB1.hpp:160:41)2default:defaultZ200-472h px 

-Inferring partial write operation for '%s' %s200472*hls2
	l_bufferC2default:default2
(/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/dataMover/gemmMatMover.hpp:111:45)2default:defaultZ200-472h px 
Ç
-Inferring partial write operation for '%s' %s200472*hls2
p_A2default:default2\
H(/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:68:14)2default:defaultZ200-472h px 
Ç
-Inferring partial write operation for '%s' %s200472*hls2
p_B2default:default2\
H(/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:62:23)2default:defaultZ200-472h px 
È
-Inferring partial write operation for '%s' %s200472*hls2
v122default:default2]
I(/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:135:15)2default:defaultZ200-472h px 
È
-Inferring partial write operation for '%s' %s200472*hls2
v212default:default2]
I(/mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp:146:17)2default:defaultZ200-472h px 
ô
ÖEvaluating the output(s) of a call to function '_ssdm_op_BitConcatenate.i33.i1.i32' in function 'readVec2Stream<float, 2u>' and propagating its result(s) since all actual argument(s) to the function are constants.
*XFORMZ203-603h px 
«
Process %s is made part of the output synchronization in its dataflow region, because it has an external FIFO output and no PIPO output200765*hls2
muls2default:defaultZ200-765h pxcFor help on HLS 200-765 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=200-765.html 
ã
»Process %s has both a successor and writes an output to its caller (see the GUI dataflow viewer). This may lead to lower throughput. Consider copying this output via a successor process.
2001450*hls2
muls2default:defaultZ200-1450h pxeFor help on HLS 200-1450 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=200-1450.html 
¹
Finished Architecture Synthesis: CPU user time: 0.95 seconds. CPU system time: 0.17 seconds. Elapsed time: 1.12 seconds; current allocated memory: 1.611 GB.
*HLSZ200-111h px 
:
 Starting hardware synthesis ...
*HLSZ200-10h px 
<
"Synthesizing 'cemit_replaced' ...
*HLSZ200-10h px 
u
ZLegalizing function name 'gemmMatAMover<float, 2u, 2u>' to 'gemmMatAMover_float_2u_2u_s'.
*SYNZ201-103h px 
u
ZLegalizing function name 'gemmMatBMover<float, 2u, 2u>' to 'gemmMatBMover_float_2u_2u_s'.
*SYNZ201-103h px 
p
ULegalizing function name 'readVec2Stream<float, 2u>' to 'readVec2Stream_float_2u_s'.
*SYNZ201-103h px 
~
cLegalizing function name 'muls.2_Pipeline_VITIS_LOOP_141_1' to 'muls_2_Pipeline_VITIS_LOOP_141_1'.
*SYNZ201-103h px 
¡
Legalizing function name 'muls.2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2' to 'muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2'.
*SYNZ201-103h px 
~
cLegalizing function name 'muls.2_Pipeline_VITIS_LOOP_153_2' to 'muls_2_Pipeline_VITIS_LOOP_153_2'.
*SYNZ201-103h px 
J
/Legalizing function name 'muls.2' to 'muls_2'.
*SYNZ201-103h px 
J
/Legalizing function name 'adds.3' to 'adds_3'.
*SYNZ201-103h px 
J
/Legalizing function name 'macs.1' to 'macs_1'.
*SYNZ201-103h px 
Ï
³Legalizing function name 'gemmBufferC<float, 2u, 2u, 10u>_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2' to 'gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2'.
*SYNZ201-103h px 
­
Legalizing function name 'gemmBufferC<float, 2u, 2u, 10u>_Pipeline_VITIS_LOOP_131_8' to 'gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_131_8'.
*SYNZ201-103h px 
z
_Legalizing function name 'gemmBufferC<float, 2u, 2u, 10u>' to 'gemmBufferC_float_2u_2u_10u_s'.
*SYNZ201-103h px 
w
\Legalizing function name 'scal<float, 2u, unsigned int>' to 'scal_float_2u_unsigned_int_s'.
*SYNZ201-103h px 
w
\Legalizing function name 'axpy<float, 2u, unsigned int>' to 'axpy_float_2u_unsigned_int_s'.
*SYNZ201-103h px 

rLegalizing function name 'gemm<float, 1024u, 2u, 10u, unsigned int>' to 'gemm_float_1024u_2u_10u_unsigned_int_s'.
*SYNZ201-103h px 
r
WLegalizing function name 'writeStream2Vec<float, 2u>' to 'writeStream2Vec_float_2u_s'.
*SYNZ201-103h px 
N
3Legalizing function name 'process' to 'process_r'.
*SYNZ201-103h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
]
C-- Implementing module 'cemit_replaced_Pipeline_VITIS_LOOP_144_1' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_144_1'.
*SCHEDZ204-61h px 
Û
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
732default:default2+
loop 'VITIS_LOOP_144_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.38 seconds. CPU system time: 0.1 seconds. Elapsed time: 0.47 seconds; current allocated memory: 1.613 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.29 seconds. CPU system time: 0 seconds. Elapsed time: 0.29 seconds; current allocated memory: 1.613 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 

k-- Implementing module 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
O
3Pipelining loop 'VITIS_LOOP_60_1_VITIS_LOOP_61_2'.
*SCHEDZ204-61h px 
é
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
32default:default2:
&loop 'VITIS_LOOP_60_1_VITIS_LOOP_61_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
­
Finished Scheduling: CPU user time: 0.12 seconds. CPU system time: 0.03 seconds. Elapsed time: 0.13 seconds; current allocated memory: 1.614 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.06 seconds. CPU system time: 0 seconds. Elapsed time: 0.06 seconds; current allocated memory: 1.614 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
\
B-- Implementing module 'forward_node1_Loop_VITIS_LOOP_60_1_proc' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.17 seconds. CPU system time: 0 seconds. Elapsed time: 0.18 seconds; current allocated memory: 1.614 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.31 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.32 seconds; current allocated memory: 1.614 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
\
B-- Implementing module 'forward_node1_Loop_VITIS_LOOP_66_3_proc' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
?
#Pipelining loop 'VITIS_LOOP_66_3'.
*SCHEDZ204-61h px 
Ù
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
32default:default2*
loop 'VITIS_LOOP_66_3'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.1 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.11 seconds; current allocated memory: 1.615 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0 seconds. Elapsed time: 0.05 seconds; current allocated memory: 1.615 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
P
6-- Implementing module 'gemmMatAMover_float_2u_2u_s' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
O
3Pipelining loop 'VITIS_LOOP_42_2_VITIS_LOOP_43_3'.
*SCHEDZ204-61h px 
é
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
22default:default2:
&loop 'VITIS_LOOP_42_2_VITIS_LOOP_43_3'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
­
Finished Scheduling: CPU user time: 0.06 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.615 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.05 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.05 seconds; current allocated memory: 1.615 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
P
6-- Implementing module 'gemmMatBMover_float_2u_2u_s' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
O
3Pipelining loop 'VITIS_LOOP_76_2_VITIS_LOOP_77_3'.
*SCHEDZ204-61h px 
é
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
42default:default2:
&loop 'VITIS_LOOP_76_2_VITIS_LOOP_77_3'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.11 seconds. CPU system time: 0 seconds. Elapsed time: 0.11 seconds; current allocated memory: 1.615 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.09 seconds. CPU system time: 0 seconds. Elapsed time: 0.09 seconds; current allocated memory: 1.615 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
N
4-- Implementing module 'readVec2Stream_float_2u_s' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_125_1'.
*SCHEDZ204-61h px 
Ú
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
22default:default2+
loop 'VITIS_LOOP_125_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¨
Finished Scheduling: CPU user time: 0.1 seconds. CPU system time: 0 seconds. Elapsed time: 0.1 seconds; current allocated memory: 1.616 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0 seconds. Elapsed time: 0.03 seconds; current allocated memory: 1.616 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
e
K-- Implementing module 'tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
Q
5Pipelining loop 'VITIS_LOOP_271_1_VITIS_LOOP_272_2'.
*SCHEDZ204-61h px 
ë
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
22default:default2<
(loop 'VITIS_LOOP_271_1_VITIS_LOOP_272_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 1.616 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.05 seconds. CPU system time: 0 seconds. Elapsed time: 0.04 seconds; current allocated memory: 1.616 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
T
:-- Implementing module 'tagAB_Pipeline_VITIS_LOOP_283_3' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_283_3'.
*SCHEDZ204-61h px 
Ú
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
22default:default2+
loop 'VITIS_LOOP_283_3'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
­
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.616 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.04 seconds; current allocated memory: 1.616 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
:
 -- Implementing module 'tagAB' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.04 seconds. CPU system time: 0 seconds. Elapsed time: 0.05 seconds; current allocated memory: 1.616 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.05 seconds. CPU system time: 0 seconds. Elapsed time: 0.06 seconds; current allocated memory: 1.616 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
m
S-- Implementing module 'systolicArray_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
Q
5Pipelining loop 'VITIS_LOOP_633_1_VITIS_LOOP_634_2'.
*SCHEDZ204-61h px 
ë
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
12default:default2<
(loop 'VITIS_LOOP_633_1_VITIS_LOOP_634_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
­
Finished Scheduling: CPU user time: 0.08 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.09 seconds; current allocated memory: 1.617 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.04 seconds; current allocated memory: 1.617 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
\
B-- Implementing module 'systolicArray_Pipeline_VITIS_LOOP_247_1' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_247_1'.
*SCHEDZ204-61h px 
Ú
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
22default:default2+
loop 'VITIS_LOOP_247_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
­
Finished Scheduling: CPU user time: 0.08 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.617 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0 seconds. Elapsed time: 0.04 seconds; current allocated memory: 1.617 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
B
(-- Implementing module 'systolicArray' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.03 seconds. CPU system time: 0 seconds. Elapsed time: 0.04 seconds; current allocated memory: 1.617 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.05 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.05 seconds; current allocated memory: 1.617 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
R
8-- Implementing module 'muls_Pipeline_VITIS_LOOP_89_1' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
?
#Pipelining loop 'VITIS_LOOP_89_1'.
*SCHEDZ204-61h px 
Ù
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
12default:default2*
loop 'VITIS_LOOP_89_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 1.618 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.03 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.04 seconds; current allocated memory: 1.618 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
d
J-- Implementing module 'muls_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
Q
5Pipelining loop 'VITIS_LOOP_633_1_VITIS_LOOP_634_2'.
*SCHEDZ204-61h px 
ë
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
12default:default2<
(loop 'VITIS_LOOP_633_1_VITIS_LOOP_634_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
­
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.07 seconds; current allocated memory: 1.618 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0 seconds. Elapsed time: 0.05 seconds; current allocated memory: 1.618 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
S
9-- Implementing module 'muls_Pipeline_VITIS_LOOP_101_2' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_101_2'.
*SCHEDZ204-61h px 
Ú
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
62default:default2+
loop 'VITIS_LOOP_101_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.12 seconds. CPU system time: 0 seconds. Elapsed time: 0.12 seconds; current allocated memory: 1.618 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.07 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.06 seconds; current allocated memory: 1.618 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
9
-- Implementing module 'muls' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 1.618 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 1.618 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
9
-- Implementing module 'adds' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
Q
5Pipelining loop 'VITIS_LOOP_193_1_VITIS_LOOP_194_2'.
*SCHEDZ204-61h px 
ë
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
42default:default2
42default:default2
312default:default2<
(loop 'VITIS_LOOP_193_1_VITIS_LOOP_194_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
­
Finished Scheduling: CPU user time: 0.18 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.19 seconds; current allocated memory: 1.619 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.22 seconds. CPU system time: 0 seconds. Elapsed time: 0.22 seconds; current allocated memory: 1.619 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
9
-- Implementing module 'macs' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
­
Finished Scheduling: CPU user time: 0.16 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.16 seconds; current allocated memory: 1.619 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 1.619 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
U
;-- Implementing module 'muls_2_Pipeline_VITIS_LOOP_141_1' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_141_1'.
*SCHEDZ204-61h px 
Ú
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
12default:default2+
loop 'VITIS_LOOP_141_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
­
Finished Scheduling: CPU user time: 0.13 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.14 seconds; current allocated memory: 1.620 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0 seconds. Elapsed time: 0.04 seconds; current allocated memory: 1.620 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
f
L-- Implementing module 'muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
Q
5Pipelining loop 'VITIS_LOOP_633_1_VITIS_LOOP_634_2'.
*SCHEDZ204-61h px 
ë
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
12default:default2<
(loop 'VITIS_LOOP_633_1_VITIS_LOOP_634_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 1.620 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0 seconds. Elapsed time: 0.04 seconds; current allocated memory: 1.620 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
U
;-- Implementing module 'muls_2_Pipeline_VITIS_LOOP_153_2' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_153_2'.
*SCHEDZ204-61h px 
Ú
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
62default:default2+
loop 'VITIS_LOOP_153_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.11 seconds. CPU system time: 0 seconds. Elapsed time: 0.11 seconds; current allocated memory: 1.620 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.06 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.620 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
;
!-- Implementing module 'muls_2' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
­
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.620 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.06 seconds. CPU system time: 0 seconds. Elapsed time: 0.06 seconds; current allocated memory: 1.620 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
;
!-- Implementing module 'adds_3' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
Q
5Pipelining loop 'VITIS_LOOP_193_1_VITIS_LOOP_194_2'.
*SCHEDZ204-61h px 
ë
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
42default:default2
42default:default2
312default:default2<
(loop 'VITIS_LOOP_193_1_VITIS_LOOP_194_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.18 seconds. CPU system time: 0 seconds. Elapsed time: 0.18 seconds; current allocated memory: 1.621 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
©
Finished Binding: CPU user time: 0.2 seconds. CPU system time: 0.02 seconds. Elapsed time: 0.21 seconds; current allocated memory: 1.621 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
;
!-- Implementing module 'macs_1' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.13 seconds. CPU system time: 0 seconds. Elapsed time: 0.15 seconds; current allocated memory: 1.621 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.621 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
:
 -- Implementing module 'merge' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
?
#Pipelining loop 'VITIS_LOOP_83_1'.
*SCHEDZ204-61h px 
»
The II Violation in module '%s' (%s): Unable to enforce a carried dependence constraint (II = %s, distance = %s, offset = %s) between %s and %s%s.
200880*hls2
merge2default:default2*
loop 'VITIS_LOOP_83_1'2default:default2
12default:default2
12default:default2
12default:default2»
¦fifo write operation ('l_sum3_write_ln85', /mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/utils.hpp:85) on port 'l_sum3' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/utils.hpp:85)2default:default2»
¦fifo write operation ('l_sum3_write_ln84', /mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/utils.hpp:84) on port 'l_sum3' (/mnt/shared/home/tz32/scalehls_vitis_test/src/Vitis_Libraries/blas/L1/include/hw/xf_blas/helpers/utils/utils.hpp:84)2default:default2
 2default:defaultZ200-880h pxcFor help on HLS 200-880 see www.xilinx.com/cgi-bin/docs/rdoc?v=2022.2;t=hls+guidance;d=200-880.html 
Ù
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
22default:default2
32default:default2*
loop 'VITIS_LOOP_83_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
­
Finished Scheduling: CPU user time: 0.15 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.16 seconds; current allocated memory: 1.622 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.04 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.05 seconds; current allocated memory: 1.622 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
>
$-- Implementing module 'process_r' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 

mConsider increasing the depth of FIFO %s (from %s to %s) to %s to improve performance and/or avoid deadlocks.2001018*hls2
l_sum_02default:default2
macs_U02default:default2
merge_U02default:default2
32default:defaultZ200-1018h px 
ª
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 1.622 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.14 seconds. CPU system time: 0 seconds. Elapsed time: 0.14 seconds; current allocated memory: 1.622 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
9
-- Implementing module 'gemm' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.35 seconds. CPU system time: 0 seconds. Elapsed time: 0.35 seconds; current allocated memory: 1.622 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.12 seconds. CPU system time: 0 seconds. Elapsed time: 0.12 seconds; current allocated memory: 1.622 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
{
a-- Implementing module 'gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
Q
5Pipelining loop 'VITIS_LOOP_105_1_VITIS_LOOP_106_2'.
*SCHEDZ204-61h px 
ë
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
22default:default2<
(loop 'VITIS_LOOP_105_1_VITIS_LOOP_106_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.29 seconds. CPU system time: 0 seconds. Elapsed time: 0.29 seconds; current allocated memory: 1.623 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.05 seconds. CPU system time: 0 seconds. Elapsed time: 0.05 seconds; current allocated memory: 1.623 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
j
P-- Implementing module 'gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_131_8' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_131_8'.
*SCHEDZ204-61h px 
Ú
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
22default:default2+
loop 'VITIS_LOOP_131_8'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.08 seconds. CPU system time: 0 seconds. Elapsed time: 0.09 seconds; current allocated memory: 1.623 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.05 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.05 seconds; current allocated memory: 1.623 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
R
8-- Implementing module 'gemmBufferC_float_2u_2u_10u_s' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.06 seconds; current allocated memory: 1.623 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.08 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.623 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
Q
7-- Implementing module 'scal_float_2u_unsigned_int_s' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
?
#Pipelining loop 'VITIS_LOOP_59_1'.
*SCHEDZ204-61h px 
Ù
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
62default:default2*
loop 'VITIS_LOOP_59_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.13 seconds. CPU system time: 0 seconds. Elapsed time: 0.12 seconds; current allocated memory: 1.623 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.08 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.623 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
Q
7-- Implementing module 'axpy_float_2u_unsigned_int_s' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
?
#Pipelining loop 'VITIS_LOOP_62_1'.
*SCHEDZ204-61h px 
Ú
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
102default:default2*
loop 'VITIS_LOOP_62_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.1 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.11 seconds; current allocated memory: 1.624 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¦
Finished Binding: CPU user time: 0.1 seconds. CPU system time: 0 seconds. Elapsed time: 0.09 seconds; current allocated memory: 1.624 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
[
A-- Implementing module 'gemm_float_1024u_2u_10u_unsigned_int_s' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
mConsider increasing the depth of FIFO %s (from %s to %s) to %s to improve performance and/or avoid deadlocks.2001018*hls2
l_betaC2default:default21
scal_float_2u_unsigned_int_U02default:default21
axpy_float_2u_unsigned_int_U02default:default2
32default:defaultZ200-1018h px 
ª
Finished Scheduling: CPU user time: 0.09 seconds. CPU system time: 0 seconds. Elapsed time: 0.09 seconds; current allocated memory: 1.624 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.16 seconds. CPU system time: 0 seconds. Elapsed time: 0.17 seconds; current allocated memory: 1.624 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
O
5-- Implementing module 'writeStream2Vec_float_2u_s' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_154_1'.
*SCHEDZ204-61h px 
Ú
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
22default:default2+
loop 'VITIS_LOOP_154_1'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.36 seconds. CPU system time: 0 seconds. Elapsed time: 0.36 seconds; current allocated memory: 1.625 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.06 seconds. CPU system time: 0 seconds. Elapsed time: 0.06 seconds; current allocated memory: 1.625 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
]
C-- Implementing module 'forward_node1_Loop_VITIS_LOOP_134_4_proc' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
@
$Pipelining loop 'VITIS_LOOP_134_4'.
*SCHEDZ204-61h px 
Ú
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
22default:default2+
loop 'VITIS_LOOP_134_4'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 1.625 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
ª
Finished Binding: CPU user time: 0.06 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.06 seconds; current allocated memory: 1.625 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
B
(-- Implementing module 'forward_node1' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
²
mConsider increasing the depth of FIFO %s (from %s to %s) to %s to improve performance and/or avoid deadlocks.2001018*hls2
l_strC2default:default2.
readVec2Stream_float_2u_U02default:default2;
'gemm_float_1024u_2u_10u_unsigned_int_U02default:default2
32default:defaultZ200-1018h px 
ª
Finished Scheduling: CPU user time: 0.08 seconds. CPU system time: 0 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.625 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.22 seconds. CPU system time: 0 seconds. Elapsed time: 0.23 seconds; current allocated memory: 1.625 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
\
B-- Implementing module 'cemit_replaced_Pipeline_VITIS_LOOP_33_2' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
?
#Pipelining loop 'VITIS_LOOP_33_2'.
*SCHEDZ204-61h px 
Ú
BPipelining result : Target II = %s, Final II = %s, Depth = %s, %s
2001470*hls2
NA2default:default2
12default:default2
122default:default2*
loop 'VITIS_LOOP_33_2'2default:defaultZ200-1470h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
¬
Finished Scheduling: CPU user time: 0.5 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.51 seconds; current allocated memory: 1.625 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
¦
Finished Binding: CPU user time: 0.11 seconds. CPU system time: 0 seconds. Elapsed time: 0.1 seconds; current allocated memory: 1.625 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
C
)-- Implementing module 'cemit_replaced' 
*HLSZ200-42h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
4
Starting scheduling ...
*SCHEDZ204-11h px 
1
Finished scheduling.
*SCHEDZ204-11h px 
ª
Finished Scheduling: CPU user time: 0.21 seconds. CPU system time: 0 seconds. Elapsed time: 0.21 seconds; current allocated memory: 1.626 GB.
*HLSZ200-111h px 
G
+Starting micro-architecture generation ...
*BINDZ205-100h px 
C
'Performing variable lifetime analysis.
*BINDZ205-101h px 
8
Exploring resource sharing.
*BINDZ205-101h px 
(
Binding ...
*BINDZ205-101h px 
D
(Finished micro-architecture generation.
*BINDZ205-100h px 
§
Finished Binding: CPU user time: 0.59 seconds. CPU system time: 0 seconds. Elapsed time: 0.59 seconds; current allocated memory: 1.626 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
c
I-- Generating RTL for module 'cemit_replaced_Pipeline_VITIS_LOOP_144_1' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ú
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2<
(cemit_replaced_Pipeline_VITIS_LOOP_144_12default:default2$
VITIS_LOOP_144_12default:default2!
loop pipeline2default:defaultZ200-1030h px 
i
LFinished creating RTL model for 'cemit_replaced_Pipeline_VITIS_LOOP_144_1'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.58 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.59 seconds; current allocated memory: 1.627 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 

q-- Generating RTL for module 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
±
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2d
Pforward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_22default:default23
VITIS_LOOP_60_1_VITIS_LOOP_61_22default:default2!
loop pipeline2default:defaultZ200-1030h px 
¤
Setting dangling out port 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2/m_axi_gmem_ARVALID' to 0.
*RTGENZ206-101h px 
£
Setting dangling out port 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2/m_axi_gmem_ARADDR' to 0.
*RTGENZ206-101h px 
¡
Setting dangling out port 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2/m_axi_gmem_ARID' to 0.
*RTGENZ206-101h px 
¢
Setting dangling out port 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2/m_axi_gmem_ARLEN' to 0.
*RTGENZ206-101h px 
£
Setting dangling out port 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2/m_axi_gmem_ARSIZE' to 0.
*RTGENZ206-101h px 
¤
Setting dangling out port 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2/m_axi_gmem_ARBURST' to 0.
*RTGENZ206-101h px 
£
Setting dangling out port 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2/m_axi_gmem_ARLOCK' to 0.
*RTGENZ206-101h px 
¤
Setting dangling out port 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2/m_axi_gmem_ARCACHE' to 0.
*RTGENZ206-101h px 
£
Setting dangling out port 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2/m_axi_gmem_ARPROT' to 0.
*RTGENZ206-101h px 
¢
Setting dangling out port 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2/m_axi_gmem_ARQOS' to 0.
*RTGENZ206-101h px 
¥
Setting dangling out port 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2/m_axi_gmem_ARREGION' to 0.
*RTGENZ206-101h px 
£
Setting dangling out port 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2/m_axi_gmem_ARUSER' to 0.
*RTGENZ206-101h px 

tFinished creating RTL model for 'forward_node1_Loop_VITIS_LOOP_60_1_proc_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.26 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.28 seconds; current allocated memory: 1.629 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
b
H-- Generating RTL for module 'forward_node1_Loop_VITIS_LOOP_60_1_proc' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
h
KFinished creating RTL model for 'forward_node1_Loop_VITIS_LOOP_60_1_proc'.
*RTGENZ206-100h px 
²
Finished Creating RTL model: CPU user time: 0.16 seconds. CPU system time: 0 seconds. Elapsed time: 0.17 seconds; current allocated memory: 1.631 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
b
H-- Generating RTL for module 'forward_node1_Loop_VITIS_LOOP_66_3_proc' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ø
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2;
'forward_node1_Loop_VITIS_LOOP_66_3_proc2default:default2#
VITIS_LOOP_66_32default:default2!
loop pipeline2default:defaultZ200-1030h px 
h
KFinished creating RTL model for 'forward_node1_Loop_VITIS_LOOP_66_3_proc'.
*RTGENZ206-100h px 
²
Finished Creating RTL model: CPU user time: 0.12 seconds. CPU system time: 0 seconds. Elapsed time: 0.12 seconds; current allocated memory: 1.632 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
V
<-- Generating RTL for module 'gemmMatAMover_float_2u_2u_s' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ü
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2/
gemmMatAMover_float_2u_2u_s2default:default23
VITIS_LOOP_42_2_VITIS_LOOP_43_32default:default2!
loop pipeline2default:defaultZ200-1030h px 
\
?Finished creating RTL model for 'gemmMatAMover_float_2u_2u_s'.
*RTGENZ206-100h px 
±
Finished Creating RTL model: CPU user time: 0.1 seconds. CPU system time: 0 seconds. Elapsed time: 0.11 seconds; current allocated memory: 1.633 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
V
<-- Generating RTL for module 'gemmMatBMover_float_2u_2u_s' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ü
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2/
gemmMatBMover_float_2u_2u_s2default:default23
VITIS_LOOP_76_2_VITIS_LOOP_77_32default:default2!
loop pipeline2default:defaultZ200-1030h px 
\
?Finished creating RTL model for 'gemmMatBMover_float_2u_2u_s'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.11 seconds. CPU system time: 0.02 seconds. Elapsed time: 0.12 seconds; current allocated memory: 1.634 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
T
:-- Generating RTL for module 'readVec2Stream_float_2u_s' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ë
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2-
readVec2Stream_float_2u_s2default:default2$
VITIS_LOOP_125_12default:default2!
loop pipeline2default:defaultZ200-1030h px 
Z
=Finished creating RTL model for 'readVec2Stream_float_2u_s'.
*RTGENZ206-100h px 
²
Finished Creating RTL model: CPU user time: 0.16 seconds. CPU system time: 0 seconds. Elapsed time: 0.16 seconds; current allocated memory: 1.635 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
k
Q-- Generating RTL for module 'tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 

NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2D
0tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_22default:default25
!VITIS_LOOP_271_1_VITIS_LOOP_272_22default:default2!
loop pipeline2default:defaultZ200-1030h px 
q
TFinished creating RTL model for 'tagAB_Pipeline_VITIS_LOOP_271_1_VITIS_LOOP_272_2'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.08 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.635 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
Z
@-- Generating RTL for module 'tagAB_Pipeline_VITIS_LOOP_283_3' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ñ
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls23
tagAB_Pipeline_VITIS_LOOP_283_32default:default2$
VITIS_LOOP_283_32default:default2!
loop pipeline2default:defaultZ200-1030h px 
`
CFinished creating RTL model for 'tagAB_Pipeline_VITIS_LOOP_283_3'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.11 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.11 seconds; current allocated memory: 1.636 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
@
&-- Generating RTL for module 'tagAB' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
F
)Finished creating RTL model for 'tagAB'.
*RTGENZ206-100h px 
²
Finished Creating RTL model: CPU user time: 0.08 seconds. CPU system time: 0 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.637 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
s
Y-- Generating RTL for module 'systolicArray_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
y
\Finished creating RTL model for 'systolicArray_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2'.
*RTGENZ206-100h px 
²
Finished Creating RTL model: CPU user time: 0.08 seconds. CPU system time: 0 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.637 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
b
H-- Generating RTL for module 'systolicArray_Pipeline_VITIS_LOOP_247_1' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ù
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2;
'systolicArray_Pipeline_VITIS_LOOP_247_12default:default2$
VITIS_LOOP_247_12default:default2!
loop pipeline2default:defaultZ200-1030h px 
h
KFinished creating RTL model for 'systolicArray_Pipeline_VITIS_LOOP_247_1'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.11 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.12 seconds; current allocated memory: 1.638 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
H
.-- Generating RTL for module 'systolicArray' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
N
1Finished creating RTL model for 'systolicArray'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.08 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.640 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
X
>-- Generating RTL for module 'muls_Pipeline_VITIS_LOOP_89_1' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
^
AFinished creating RTL model for 'muls_Pipeline_VITIS_LOOP_89_1'.
*RTGENZ206-100h px 
²
Finished Creating RTL model: CPU user time: 0.08 seconds. CPU system time: 0 seconds. Elapsed time: 0.08 seconds; current allocated memory: 1.640 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
j
P-- Generating RTL for module 'muls_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
p
SFinished creating RTL model for 'muls_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2'.
*RTGENZ206-100h px 
²
Finished Creating RTL model: CPU user time: 0.06 seconds. CPU system time: 0 seconds. Elapsed time: 0.06 seconds; current allocated memory: 1.641 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
Y
?-- Generating RTL for module 'muls_Pipeline_VITIS_LOOP_101_2' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ð
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls22
muls_Pipeline_VITIS_LOOP_101_22default:default2$
VITIS_LOOP_101_22default:default2!
loop pipeline2default:defaultZ200-1030h px 
d
GGenerating core module 'fmul_32ns_32ns_32_4_max_dsp_1': 2 instance(s).
*RTGENZ206-100h px 
_
BFinished creating RTL model for 'muls_Pipeline_VITIS_LOOP_101_2'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.12 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.12 seconds; current allocated memory: 1.642 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
?
%-- Generating RTL for module 'muls' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
E
(Finished creating RTL model for 'muls'.
*RTGENZ206-100h px 
²
Finished Creating RTL model: CPU user time: 0.14 seconds. CPU system time: 0 seconds. Elapsed time: 0.15 seconds; current allocated memory: 1.643 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
?
%-- Generating RTL for module 'adds' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ç
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2
adds2default:default25
!VITIS_LOOP_193_1_VITIS_LOOP_194_22default:default2!
loop pipeline2default:defaultZ200-1030h px 
c
FGenerating core module 'fadd_32ns_32ns_32_5_no_dsp_1': 1 instance(s).
*RTGENZ206-100h px 
e
HGenerating core module 'fadd_32ns_32ns_32_7_full_dsp_1': 2 instance(s).
*RTGENZ206-100h px 
E
(Finished creating RTL model for 'adds'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.15 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.16 seconds; current allocated memory: 1.645 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
?
%-- Generating RTL for module 'macs' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
E
(Finished creating RTL model for 'macs'.
*RTGENZ206-100h px 
m
QImplementing FIFO 'l_mul_U(cemit_replaced_fifo_w64_d2_S)' using Shift Registers.
*RTMGZ210-285h px 
}
aImplementing FIFO 'start_for_adds_U0_U(cemit_replaced_start_for_adds_U0)' using Shift Registers.
*RTMGZ210-285h px 
²
Finished Creating RTL model: CPU user time: 0.32 seconds. CPU system time: 0 seconds. Elapsed time: 0.33 seconds; current allocated memory: 1.646 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
[
A-- Generating RTL for module 'muls_2_Pipeline_VITIS_LOOP_141_1' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
a
DFinished creating RTL model for 'muls_2_Pipeline_VITIS_LOOP_141_1'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.15 seconds. CPU system time: 0.02 seconds. Elapsed time: 0.16 seconds; current allocated memory: 1.647 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
l
R-- Generating RTL for module 'muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
r
UFinished creating RTL model for 'muls_2_Pipeline_VITIS_LOOP_633_1_VITIS_LOOP_634_2'.
*RTGENZ206-100h px 
²
Finished Creating RTL model: CPU user time: 0.07 seconds. CPU system time: 0 seconds. Elapsed time: 0.07 seconds; current allocated memory: 1.647 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
[
A-- Generating RTL for module 'muls_2_Pipeline_VITIS_LOOP_153_2' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ò
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls24
 muls_2_Pipeline_VITIS_LOOP_153_22default:default2$
VITIS_LOOP_153_22default:default2!
loop pipeline2default:defaultZ200-1030h px 
d
GGenerating core module 'fmul_32ns_32ns_32_4_max_dsp_1': 2 instance(s).
*RTGENZ206-100h px 
a
DFinished creating RTL model for 'muls_2_Pipeline_VITIS_LOOP_153_2'.
*RTGENZ206-100h px 
²
Finished Creating RTL model: CPU user time: 0.13 seconds. CPU system time: 0 seconds. Elapsed time: 0.13 seconds; current allocated memory: 1.649 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
A
'-- Generating RTL for module 'muls_2' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
G
*Finished creating RTL model for 'muls_2'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.14 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.15 seconds; current allocated memory: 1.650 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
A
'-- Generating RTL for module 'adds_3' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
é
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2
adds_32default:default25
!VITIS_LOOP_193_1_VITIS_LOOP_194_22default:default2!
loop pipeline2default:defaultZ200-1030h px 
c
FGenerating core module 'fadd_32ns_32ns_32_5_no_dsp_1': 1 instance(s).
*RTGENZ206-100h px 
e
HGenerating core module 'fadd_32ns_32ns_32_7_full_dsp_1': 2 instance(s).
*RTGENZ206-100h px 
G
*Finished creating RTL model for 'adds_3'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.15 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.16 seconds; current allocated memory: 1.651 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
A
'-- Generating RTL for module 'macs_1' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
g
JRTL name 'fifo_w64_d2_S' is changed to 'fifo_w64_d2_S_x' due to conflict.
*RTGENZ206-101h px 
G
*Finished creating RTL model for 'macs_1'.
*RTGENZ206-100h px 
o
SImplementing FIFO 'l_mul_U(cemit_replaced_fifo_w64_d2_S_x)' using Shift Registers.
*RTMGZ210-285h px 

eImplementing FIFO 'start_for_adds_3_U0_U(cemit_replaced_start_for_adds_3_U0)' using Shift Registers.
*RTMGZ210-285h px 
²
Finished Creating RTL model: CPU user time: 0.33 seconds. CPU system time: 0 seconds. Elapsed time: 0.34 seconds; current allocated memory: 1.653 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
@
&-- Generating RTL for module 'merge' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
Ö
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2
merge2default:default2#
VITIS_LOOP_83_12default:default2!
loop pipeline2default:defaultZ200-1030h px 
F
)Finished creating RTL model for 'merge'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.15 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.15 seconds; current allocated memory: 1.653 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
D
*-- Generating RTL for module 'process_r' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
h
KRTL name 'fifo_w64_d2_S' is changed to 'fifo_w64_d2_S_x0' due to conflict.
*RTGENZ206-101h px 
J
-Finished creating RTL model for 'process_r'.
*RTGENZ206-100h px 
n
RImplementing FIFO 'l_aStr_U(cemit_replaced_fifo_w66_d2_S)' using Shift Registers.
*RTMGZ210-285h px 
q
UImplementing FIFO 'l_bStr_U(cemit_replaced_fifo_w64_d2_S_x0)' using Shift Registers.
*RTMGZ210-285h px 
q
UImplementing FIFO 'l_dataA_0_U(cemit_replaced_fifo_w34_d4_S)' using Shift Registers.
*RTMGZ210-285h px 
q
UImplementing FIFO 'l_dataA_1_U(cemit_replaced_fifo_w34_d4_S)' using Shift Registers.
*RTMGZ210-285h px 
q
UImplementing FIFO 'l_dataB_0_U(cemit_replaced_fifo_w64_d4_S)' using Shift Registers.
*RTMGZ210-285h px 
t
XImplementing FIFO 'l_dataB_1_U(cemit_replaced_fifo_w64_d2_S_x0)' using Shift Registers.
*RTMGZ210-285h px 
r
VImplementing FIFO 'l_sum_0_U(cemit_replaced_fifo_w64_d2_S_x0)' using Shift Registers.
*RTMGZ210-285h px 
r
VImplementing FIFO 'l_sum_1_U(cemit_replaced_fifo_w64_d2_S_x0)' using Shift Registers.
*RTMGZ210-285h px 

sImplementing FIFO 'start_for_systolicArray_U0_U(cemit_replaced_start_for_systolicArray_U0)' using Shift Registers.
*RTMGZ210-285h px 
}
aImplementing FIFO 'start_for_macs_U0_U(cemit_replaced_start_for_macs_U0)' using Shift Registers.
*RTMGZ210-285h px 

eImplementing FIFO 'start_for_macs_1_U0_U(cemit_replaced_start_for_macs_1_U0)' using Shift Registers.
*RTMGZ210-285h px 

cImplementing FIFO 'start_for_merge_U0_U(cemit_replaced_start_for_merge_U0)' using Shift Registers.
*RTMGZ210-285h px 
µ
Finished Creating RTL model: CPU user time: 0.18 seconds. CPU system time: 0.03 seconds. Elapsed time: 0.21 seconds; current allocated memory: 1.655 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
?
%-- Generating RTL for module 'gemm' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
E
(Finished creating RTL model for 'gemm'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.31 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.33 seconds; current allocated memory: 1.655 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 

g-- Generating RTL for module 'gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
©
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2Z
FgemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_22default:default25
!VITIS_LOOP_105_1_VITIS_LOOP_106_22default:default2!
loop pipeline2default:defaultZ200-1030h px 

jFinished creating RTL model for 'gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2'.
*RTGENZ206-100h px 
²
Finished Creating RTL model: CPU user time: 0.28 seconds. CPU system time: 0 seconds. Elapsed time: 0.28 seconds; current allocated memory: 1.656 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
p
V-- Generating RTL for module 'gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_131_8' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 

NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2I
5gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_131_82default:default2$
VITIS_LOOP_131_82default:default2!
loop pipeline2default:defaultZ200-1030h px 
v
YFinished creating RTL model for 'gemmBufferC_float_2u_2u_10u_Pipeline_VITIS_LOOP_131_8'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.14 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.14 seconds; current allocated memory: 1.657 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
X
>-- Generating RTL for module 'gemmBufferC_float_2u_2u_10u_s' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
^
AFinished creating RTL model for 'gemmBufferC_float_2u_2u_10u_s'.
*RTGENZ206-100h px 

lImplementing memory 'cemit_replaced_gemmBufferC_float_2u_2u_10u_s_l_bufferC_RAM_AUTO_1R1W' using auto RAMs.
*RTMGZ210-278h px 
±
Finished Creating RTL model: CPU user time: 0.1 seconds. CPU system time: 0 seconds. Elapsed time: 0.09 seconds; current allocated memory: 1.658 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
W
=-- Generating RTL for module 'scal_float_2u_unsigned_int_s' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
í
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls20
scal_float_2u_unsigned_int_s2default:default2#
VITIS_LOOP_59_12default:default2!
loop pipeline2default:defaultZ200-1030h px 
d
GGenerating core module 'fmul_32ns_32ns_32_4_max_dsp_1': 2 instance(s).
*RTGENZ206-100h px 
]
@Finished creating RTL model for 'scal_float_2u_unsigned_int_s'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.15 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.15 seconds; current allocated memory: 1.659 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
W
=-- Generating RTL for module 'axpy_float_2u_unsigned_int_s' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
í
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls20
axpy_float_2u_unsigned_int_s2default:default2#
VITIS_LOOP_62_12default:default2!
loop pipeline2default:defaultZ200-1030h px 
e
HGenerating core module 'fadd_32ns_32ns_32_7_full_dsp_1': 2 instance(s).
*RTGENZ206-100h px 
]
@Finished creating RTL model for 'axpy_float_2u_unsigned_int_s'.
*RTGENZ206-100h px 
µ
Finished Creating RTL model: CPU user time: 0.13 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.14 seconds; current allocated memory: 1.660 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
a
G-- Generating RTL for module 'gemm_float_1024u_2u_10u_unsigned_int_s' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
h
KRTL name 'fifo_w64_d2_S' is changed to 'fifo_w64_d2_S_x1' due to conflict.
*RTGENZ206-101h px 
g
JFinished creating RTL model for 'gemm_float_1024u_2u_10u_unsigned_int_s'.
*RTGENZ206-100h px 
p
TImplementing FIFO 'l_sum_U(cemit_replaced_fifo_w64_d2_S_x1)' using Shift Registers.
*RTMGZ210-285h px 
p
TImplementing FIFO 'l_mat_U(cemit_replaced_fifo_w64_d2_S_x1)' using Shift Registers.
*RTMGZ210-285h px 
r
VImplementing FIFO 'l_betaC_U(cemit_replaced_fifo_w64_d2_S_x1)' using Shift Registers.
*RTMGZ210-285h px 
¬
Implementing FIFO 'start_for_gemmBufferC_float_2u_2u_10u_U0_U(cemit_replaced_start_for_gemmBufferC_float_2u_2u_10u_U0)' using Shift Registers.
*RTMGZ210-285h px 
ª
Implementing FIFO 'start_for_axpy_float_2u_unsigned_int_U0_U(cemit_replaced_start_for_axpy_float_2u_unsigned_int_U0)' using Shift Registers.
*RTMGZ210-285h px 
µ
Finished Creating RTL model: CPU user time: 0.19 seconds. CPU system time: 0.01 seconds. Elapsed time: 0.18 seconds; current allocated memory: 1.661 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
U
;-- Generating RTL for module 'writeStream2Vec_float_2u_s' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ì
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2.
writeStream2Vec_float_2u_s2default:default2$
VITIS_LOOP_154_12default:default2!
loop pipeline2default:defaultZ200-1030h px 
[
>Finished creating RTL model for 'writeStream2Vec_float_2u_s'.
*RTGENZ206-100h px 
²
Finished Creating RTL model: CPU user time: 0.41 seconds. CPU system time: 0 seconds. Elapsed time: 0.41 seconds; current allocated memory: 1.662 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
c
I-- Generating RTL for module 'forward_node1_Loop_VITIS_LOOP_134_4_proc' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ú
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2<
(forward_node1_Loop_VITIS_LOOP_134_4_proc2default:default2$
VITIS_LOOP_134_42default:default2!
loop pipeline2default:defaultZ200-1030h px 
i
LFinished creating RTL model for 'forward_node1_Loop_VITIS_LOOP_134_4_proc'.
*RTGENZ206-100h px 
±
Finished Creating RTL model: CPU user time: 0.11 seconds. CPU system time: 0 seconds. Elapsed time: 0.1 seconds; current allocated memory: 1.662 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
H
.-- Generating RTL for module 'forward_node1' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
h
KRTL name 'fifo_w64_d2_S' is changed to 'fifo_w64_d2_S_x2' due to conflict.
*RTGENZ206-101h px 
`
CSetting dangling out port 'forward_node1/m_axi_gmem_AWVALID' to 0.
*RTGENZ206-101h px 
_
BSetting dangling out port 'forward_node1/m_axi_gmem_AWADDR' to 0.
*RTGENZ206-101h px 
]
@Setting dangling out port 'forward_node1/m_axi_gmem_AWID' to 0.
*RTGENZ206-101h px 
^
ASetting dangling out port 'forward_node1/m_axi_gmem_AWLEN' to 0.
*RTGENZ206-101h px 
_
BSetting dangling out port 'forward_node1/m_axi_gmem_AWSIZE' to 0.
*RTGENZ206-101h px 
`
CSetting dangling out port 'forward_node1/m_axi_gmem_AWBURST' to 0.
*RTGENZ206-101h px 
_
BSetting dangling out port 'forward_node1/m_axi_gmem_AWLOCK' to 0.
*RTGENZ206-101h px 
`
CSetting dangling out port 'forward_node1/m_axi_gmem_AWCACHE' to 0.
*RTGENZ206-101h px 
_
BSetting dangling out port 'forward_node1/m_axi_gmem_AWPROT' to 0.
*RTGENZ206-101h px 
^
ASetting dangling out port 'forward_node1/m_axi_gmem_AWQOS' to 0.
*RTGENZ206-101h px 
a
DSetting dangling out port 'forward_node1/m_axi_gmem_AWREGION' to 0.
*RTGENZ206-101h px 
_
BSetting dangling out port 'forward_node1/m_axi_gmem_AWUSER' to 0.
*RTGENZ206-101h px 
_
BSetting dangling out port 'forward_node1/m_axi_gmem_WVALID' to 0.
*RTGENZ206-101h px 
^
ASetting dangling out port 'forward_node1/m_axi_gmem_WDATA' to 0.
*RTGENZ206-101h px 
^
ASetting dangling out port 'forward_node1/m_axi_gmem_WSTRB' to 0.
*RTGENZ206-101h px 
^
ASetting dangling out port 'forward_node1/m_axi_gmem_WLAST' to 0.
*RTGENZ206-101h px 
\
?Setting dangling out port 'forward_node1/m_axi_gmem_WID' to 0.
*RTGENZ206-101h px 
^
ASetting dangling out port 'forward_node1/m_axi_gmem_WUSER' to 0.
*RTGENZ206-101h px 
_
BSetting dangling out port 'forward_node1/m_axi_gmem_BREADY' to 0.
*RTGENZ206-101h px 
N
1Finished creating RTL model for 'forward_node1'.
*RTGENZ206-100h px 
£
<Implementing PIPO %s using a separate memory for each block
200740*hls2B
.cemit_replaced_forward_node1_p_A_RAM_AUTO_1R1W2default:defaultZ200-740h px 
z
^Implementing memory 'cemit_replaced_forward_node1_p_A_RAM_AUTO_1R1W_memcore' using auto RAMs.
*RTMGZ210-278h px 
£
<Implementing PIPO %s using a separate memory for each block
200740*hls2B
.cemit_replaced_forward_node1_p_B_RAM_AUTO_1R1W2default:defaultZ200-740h px 
z
^Implementing memory 'cemit_replaced_forward_node1_p_B_RAM_AUTO_1R1W_memcore' using auto RAMs.
*RTMGZ210-278h px 
£
<Implementing PIPO %s using a separate memory for each block
200740*hls2B
.cemit_replaced_forward_node1_p_R_RAM_AUTO_1R1W2default:defaultZ200-740h px 
z
^Implementing memory 'cemit_replaced_forward_node1_p_R_RAM_AUTO_1R1W_memcore' using auto RAMs.
*RTMGZ210-278h px 
q
UImplementing FIFO 'l_strA_U(cemit_replaced_fifo_w64_d2_S_x2)' using Shift Registers.
*RTMGZ210-285h px 
q
UImplementing FIFO 'l_strB_U(cemit_replaced_fifo_w64_d2_S_x2)' using Shift Registers.
*RTMGZ210-285h px 
q
UImplementing FIFO 'l_strC_U(cemit_replaced_fifo_w64_d2_S_x2)' using Shift Registers.
*RTMGZ210-285h px 
s
WImplementing FIFO 'l_strSum_U(cemit_replaced_fifo_w64_d2_S_x2)' using Shift Registers.
*RTMGZ210-285h px 
¾
¡Implementing FIFO 'start_for_gemm_float_1024u_2u_10u_unsigned_int_U0_U(cemit_replaced_start_for_gemm_float_1024u_2u_10u_unsigned_int_U0)' using Shift Registers.
*RTMGZ210-285h px 
¦
Implementing FIFO 'start_for_writeStream2Vec_float_2u_U0_U(cemit_replaced_start_for_writeStream2Vec_float_2u_U0)' using Shift Registers.
*RTMGZ210-285h px 
µ
Finished Creating RTL model: CPU user time: 0.37 seconds. CPU system time: 0.02 seconds. Elapsed time: 0.38 seconds; current allocated memory: 1.664 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
b
H-- Generating RTL for module 'cemit_replaced_Pipeline_VITIS_LOOP_33_2' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
ø
NApply Unified Pipeline Control on module '%s' pipeline '%s' pipeline type '%s'2001030*hls2;
'cemit_replaced_Pipeline_VITIS_LOOP_33_22default:default2#
VITIS_LOOP_33_22default:default2!
loop pipeline2default:defaultZ200-1030h px 
z
]Setting dangling out port 'cemit_replaced_Pipeline_VITIS_LOOP_33_2/m_axi_gmem_AWVALID' to 0.
*RTGENZ206-101h px 
y
\Setting dangling out port 'cemit_replaced_Pipeline_VITIS_LOOP_33_2/m_axi_gmem_AWADDR' to 0.
*RTGENZ206-101h px 
w
ZSetting dangling out port 'cemit_replaced_Pipeline_VITIS_LOOP_33_2/m_axi_gmem_AWID' to 0.
*RTGENZ206-101h px 
x
[Setting dangling out port 'cemit_replaced_Pipeline_VITIS_LOOP_33_2/m_axi_gmem_AWLEN' to 0.
*RTGENZ206-101h px 
y
\Setting dangling out port 'cemit_replaced_Pipeline_VITIS_LOOP_33_2/m_axi_gmem_AWSIZE' to 0.
*RTGENZ206-101h px 
z
]Setting dangling out port 'cemit_replaced_Pipeline_VITIS_LOOP_33_2/m_axi_gmem_AWBURST' to 0.
*RTGENZ206-101h px 
y
\Setting dangling out port 'cemit_replaced_Pipeline_VITIS_LOOP_33_2/m_axi_gmem_AWLOCK' to 0.
*RTGENZ206-101h px 
z
]Setting dangling out port 'cemit_replaced_Pipeline_VITIS_LOOP_33_2/m_axi_gmem_AWCACHE' to 0.
*RTGENZ206-101h px 
y
\Setting dangling out port 'cemit_replaced_Pipeline_VITIS_LOOP_33_2/m_axi_gmem_AWPROT' to 0.
*RTGENZ206-101h px 
x
[Setting dangling out port 'cemit_replaced_Pipeline_VITIS_LOOP_33_2/m_axi_gmem_AWQOS' to 0.
*RTGENZ206-101h px 
{
^Setting dangling out port 'cemit_replaced_Pipeline_VITIS_LOOP_33_2/m_axi_gmem_AWREGION' to 0.
*RTGENZ206-101h px 
y
\Setting dangling out port 'cemit_replaced_Pipeline_VITIS_LOOP_33_2/m_axi_gmem_AWUSER' to 0.
*RTGENZ206-101h px 
y
\Setting dangling out port 'cemit_replaced_Pipeline_VITIS_LOOP_33_2/m_axi_gmem_BREADY' to 0.
*RTGENZ206-101h px 
e
HGenerating core module 'fadd_32ns_32ns_32_7_full_dsp_1': 1 instance(s).
*RTGENZ206-100h px 
b
EGenerating core module 'fcmp_32ns_32ns_1_2_no_dsp_1': 1 instance(s).
*RTGENZ206-100h px 
h
KFinished creating RTL model for 'cemit_replaced_Pipeline_VITIS_LOOP_33_2'.
*RTGENZ206-100h px 

uImplementing memory 'cemit_replaced_cemit_replaced_Pipeline_VITIS_LOOP_33_2_v20_RAM_T2P_BRAM_1R1W' using block ROMs.
*RTMGZ210-279h px 
µ
Finished Creating RTL model: CPU user time: 0.74 seconds. CPU system time: 0.02 seconds. Elapsed time: 0.77 seconds; current allocated memory: 1.666 GB.
*HLSZ200-111h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
I
/-- Generating RTL for module 'cemit_replaced' 
*HLSZ200-10h px 
[
A----------------------------------------------------------------
*HLSZ200-10h px 
f
IDesign contains AXI ports. Reset is fixed to synchronous and active low.
*RTGENZ206-101h px 
^
ASetting interface mode on port 'cemit_replaced/gmem' to 'm_axi'.
*RTGENZ206-500h px 
k
NSetting interface mode on port 'cemit_replaced/v17' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
k
NSetting interface mode on port 'cemit_replaced/v18' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
k
NSetting interface mode on port 'cemit_replaced/v19' to 's_axilite & ap_none'.
*RTGENZ206-500h px 
q
TSetting interface mode on function 'cemit_replaced' to 's_axilite & ap_ctrl_chain'.
*RTGENZ206-500h px 
c
FBundling port 'v17', 'v18', 'v19' and 'return' to AXI-Lite port ctrl.
*RTGENZ206-100h px 
O
2Finished creating RTL model for 'cemit_replaced'.
*RTGENZ206-100h px 
i
MImplementing memory 'cemit_replaced_v21_RAM_T2P_BRAM_1R1W' using block RAMs.
*RTMGZ210-278h px 
i
MImplementing memory 'cemit_replaced_v22_RAM_T2P_BRAM_1R1W' using block RAMs.
*RTMGZ210-278h px 
´
Finished Creating RTL model: CPU user time: 0.3 seconds. CPU system time: 0.03 seconds. Elapsed time: 0.32 seconds; current allocated memory: 1.668 GB.
*HLSZ200-111h px 
¼
 Finished Generating all RTL models: CPU user time: 1.71 seconds. CPU system time: 0.06 seconds. Elapsed time: 1.76 seconds; current allocated memory: 1.670 GB.
*HLSZ200-111h px 
µ
hDesign has inferred MAXI bursts%s, see Vitis HLS GUI synthesis summary report for detailed information.
2001603*hls2&
 and missed bursts2default:defaultZ200-1603h px 
¸
Finished Updating report files: CPU user time: 2.46 seconds. CPU system time: 0.03 seconds. Elapsed time: 2.49 seconds; current allocated memory: 1.682 GB.
*HLSZ200-111h px 
D
(Generating VHDL RTL for cemit_replaced.
*VHDLZ208-304h px 
G
+Generating Verilog RTL for cemit_replaced.
*VLOGZ209-307h px 
|
**** Loop Constraint Status: %s200790*hls28
$All loop constraints were satisfied.2default:defaultZ200-790h px 
Z
**** Estimated Fmax: %s MHz200789*hls2
271.662default:defaultZ200-789h px 
»
Finished Command csynth_design CPU user time: 66.37 seconds. CPU system time: 5.68 seconds. Elapsed time: 72.06 seconds; current allocated memory: 628.188 MB.
*HLSZ200-111h px 
U
Running: %s
2001510*hls2"
export_design 2default:defaultZ200-1510h px 
8
Exporting RTL as a Vivado IP.
*IMPLZ213-8h px 

í
****** Vivado v2022.2 (64-bit)
  **** SW Build 3671981 on Fri Oct 14 04:59:54 MDT 2022
  **** IP Build 3669848 on Fri Oct 14 08:30:02 MDT 2022
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.

source run_ippack.tcl -notrace
*commonh px 
³
create_project: Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2057.824 ; gain = 96.984 ; free physical = 43614 ; free virtual = 286676
*commonh px 
G
2INFO: [IP_Flow 19-234] Refreshing IP repositories
*commonh px 
O
:INFO: [IP_Flow 19-1704] No user IP repositories specified
*commonh px 
|
gINFO: [IP_Flow 19-2313] Loaded Vivado IP repository '/opt/xilinx/vitis/v2022p2/Vivado/2022.2/data/ip'.
*commonh px 

úWARNING: [IP_Flow 19-4832] The IP name 'cemit_replaced_fadd_32ns_32ns_32_5_no_dsp_1_ip' you have specified is long. The Windows operating system has path length limitations. It is recommended you use shorter names to reduce the likelihood of issues.
*commonh px 

qINFO: [IP_Flow 19-1686] Generating 'Synthesis' target for IP 'cemit_replaced_fadd_32ns_32ns_32_5_no_dsp_1_ip'...
*commonh px 

rINFO: [IP_Flow 19-1686] Generating 'Simulation' target for IP 'cemit_replaced_fadd_32ns_32ns_32_5_no_dsp_1_ip'...
*commonh px 

üWARNING: [IP_Flow 19-4832] The IP name 'cemit_replaced_fadd_32ns_32ns_32_7_full_dsp_1_ip' you have specified is long. The Windows operating system has path length limitations. It is recommended you use shorter names to reduce the likelihood of issues.
*commonh px 

sINFO: [IP_Flow 19-1686] Generating 'Synthesis' target for IP 'cemit_replaced_fadd_32ns_32ns_32_7_full_dsp_1_ip'...
*commonh px 

tINFO: [IP_Flow 19-1686] Generating 'Simulation' target for IP 'cemit_replaced_fadd_32ns_32ns_32_7_full_dsp_1_ip'...
*commonh px 

ùWARNING: [IP_Flow 19-4832] The IP name 'cemit_replaced_fcmp_32ns_32ns_1_2_no_dsp_1_ip' you have specified is long. The Windows operating system has path length limitations. It is recommended you use shorter names to reduce the likelihood of issues.
*commonh px 

pINFO: [IP_Flow 19-1686] Generating 'Synthesis' target for IP 'cemit_replaced_fcmp_32ns_32ns_1_2_no_dsp_1_ip'...
*commonh px 

qINFO: [IP_Flow 19-1686] Generating 'Simulation' target for IP 'cemit_replaced_fcmp_32ns_32ns_1_2_no_dsp_1_ip'...
*commonh px 

ûWARNING: [IP_Flow 19-4832] The IP name 'cemit_replaced_fmul_32ns_32ns_32_4_max_dsp_1_ip' you have specified is long. The Windows operating system has path length limitations. It is recommended you use shorter names to reduce the likelihood of issues.
*commonh px 

rINFO: [IP_Flow 19-1686] Generating 'Synthesis' target for IP 'cemit_replaced_fmul_32ns_32ns_32_4_max_dsp_1_ip'...
*commonh px 

sINFO: [IP_Flow 19-1686] Generating 'Simulation' target for IP 'cemit_replaced_fmul_32ns_32ns_32_4_max_dsp_1_ip'...
*commonh px 

lINFO: [IP_Flow 19-234] Refreshing IP repositories
INFO: [IP_Flow 19-1704] No user IP repositories specified
*commonh px 
|
gINFO: [IP_Flow 19-2313] Loaded Vivado IP repository '/opt/xilinx/vitis/v2022p2/Vivado/2022.2/data/ip'.
*commonh px 

Running package_xo -xo_path /mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced/cemit_replaced/solution/impl/export.xo -kernel_name cemit_replaced -kernel_xml /mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced/cemit_replaced/solution/impl/ip/../kernel/kernel.xml -kernel_files /mnt/shared/home/tz32/scalehls_vitis_test/src/cemit_replaced.cpp -ip_directory /mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced/cemit_replaced/solution/impl/ip/ip_unzip_dir -design_xml /mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced/cemit_replaced/solution/.autopilot/db/cemit_replaced.design.xml -debug_directory /mnt/shared/home/tz32/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced/cemit_replaced/solution/.debug -hls_directory /mnt/shared/home/tz32*commonh px 

/scalehls_vitis_test/_x.hw.xilinx_u280_gen3x16_xdma_1_202211_1/cemit_replaced/cemit_replaced/cemit_replaced/solution/impl/ip/hls_files
*commonh px 
Y
DINFO: [Common 17-206] Exiting Vivado at Wed Jun 14 16:05:17 2023...
*commonh px 
x
Generated output file %s
200802*hls2:
&cemit_replaced/solution/impl/export.xo2default:defaultZ200-802h px 
¹
Finished Command export_design CPU user time: 22.43 seconds. CPU system time: 2.61 seconds. Elapsed time: 33.71 seconds; current allocated memory: 5.770 MB.
*HLSZ200-111h px 
U
Running: %s
2001510*hls2"
close_project 2default:defaultZ200-1510h px 
6
HLS completed successfully
*HLSZ200-150h px 
ª
Total CPU user time: 92.49 seconds. Total CPU system time: 9.32 seconds. Total elapsed time: 110.25 seconds; peak allocated memory: 1.689 GB.
*HLSZ200-112h px 

Exiting %s at %s...
206*common2
	vitis_hls2default:default2,
Wed Jun 14 16:05:27 20232default:defaultZ17-206h px 


End Record