// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sat Jun 10 16:54:05 2023
// Host        : xacc-head-000-5.csl.illinois.edu running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_58f6_lut_buffer_0_sim_netlist.v
// Design      : bd_58f6_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_58f6_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B8ftxEign2bOLWjw7rDPCEoQTqYotmf7ngSIEg2Jhl45YEnS23+J5n32PXMA3QLetZOi3xtYW3Z4
KfzDDh42uyvaiq+1xMMoJ026DH0BVMWF4qFAmFtIrb2FMbJj9+ALX0+uGQZvSOneKRe43wdO27Tp
+t1CkD2k/jRc6qmNJ1Y=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oWa2QEk7Zf6Ca9MTWn59NkYGDLqWCdeqqQEaX5naYUMKZkMeUk4xcPexll0DbBNNGETBe/MXdmib
VYE3gottB9kf9j3a+TYx13RnyC7KGSOp/C1nfz00cj4DgK7A+vAYMUdKWUuh/XR/HTyNmxoCkkZ7
eHZdaauaJYuGqvxglQtvCXQpkn9cvczbJwbuaPTkDgMG/ck/AEdVv1us5xtMZvxQiyXkLepKTxcR
yc2ooojJE18UqUw6wvycBWyOS38OLrC119uRKJZG18v94RtlQoA8lFTLhm5UcJDiTBVeg1nmEaBr
Mr6OpT6Ntm3ecxFDiPyAf0dMVm8XqrkC6wiyfw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Pj8W3xGgl7PQ9Q3rtB6XsNOAO2qgMV6Nq1bcXWumFybnkUoKAYPpTjcl5/nj7IsoQtQqzZV139LV
62a4+Uocz1U6BIe7tUOXzeRDNa6PjXhKbJcMPEZEk4GvhmjFnRcOeiNqsZoPPEiYTCPGqaHjMXRV
z2yKaRkyUmR231QCCHc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pS+Yh4QcVEYmZ1ow1BPMqMaVrW+I10JNqd9PUj6DpoKa4lW8/gNUU3MNaOGOHZWiOF7YtGzIxGQv
pTCtEHErnynJFgjgglfXpLGYS9S3rgGovy6y3rSESpOsr8oCIvBNv+znBegI/9/9hHIA6CgQhe0s
RlakL0MSLoIe0vyuDx0w12Xa63fcDUsvv4xlIr+wftsJngqFqznEbg3p0TvgvCThgeHDAXAEU+vB
iWzrkO9S8RwWFWqLcVBmZpXjalu1TxUUgxPejK7T5SxmO8boplFblPtAdHcO9idJOpoPZJHkuLc7
tsIJSt7XRXSw4kEFTWk18L4YpbEB7lLXnhPXrA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oskbKtwciNxGccHRNMRSN0FuWpOYqNigBNdUgyIwtC6vJ1cyZOhnmYwdLZVl7DdTZ3IjTa3cdOJo
4/xvU0K1rv1KPjDN4w9ASx13EiRpCTnWuUmqpBLQu1lrcQJ6RsKGK7nFotZuzM77T7lPPNhFM8+d
ydlp0oDb4OmLodrOe9z8kDKIAaT+k6LYqISbDPLkQmJMfa6YOaR8NzEcrvV59JR3di1lvnIy9h6p
GKOPEyO1JEs8oKqxzGE7NLAX1KPjrDK8BMgKCWZ8X78NiSNa4Fbwd+y3ek6OjeJ2m2WDyx7e6Qgz
U97EfVanOPRLo2F/ARebmIrQg/w6RQedLbeQhg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bhQ05FP4xZw7L7zXC5SLSbznNE931pHz5MfGRlNkcIsQoZc+Twab9ls1iTyW8WnBrdo8fMIyI2Vq
Sr6Rt50CJQOMQBFi8vWX52vofUUVJv46hpCpOm7hGazPUfTfezTzbDEZYWR3ny6ev3V2FRS48Jnh
7bftxnk/vLO4UOqqrb4q1mNdrOZoUTwHIBGXIsjRvXCnOfakAVok9dxYiFPPhVQ9RvCnoneRXoez
j7ltLFOuNDUH9KDRc5awCx8d2dUHqW1VwaVajdgtgqmWD4ttDJhI4culwkjOj+zHhCEmKuTdh7Wk
kXlVCroH2/RWg4FXsrpvwGiLCGwSkNsXyYb+wA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kdElSwa8dKm0KnAaKvJX9guj0AKTcngNKg/lWbHu/g0RHuGQWVkCTXFQUkb86Mtq4DP1o+khlqLX
FoB4WUPpouL9GPFUWraTvzQg0rWR2s9wU1Vlm5HkUpQh2j4srqI0O7BAHPuYGaLvxVrenePsB9w9
GiVnONxrcLJsGqhyQho9vGGql4Navz0Se8pQb92i4Zqv+It8DFLAeRB6bpHgBVH5QoSe++5jSBgJ
7hAzrRSVKl3Y4nF+v4YBa9T6NdpsVDTQNjrkQMT+iO24ZORPBhJkFqCWuViuWANKO/YSVseQt00o
Qul/Mb8e0OMVdyUJz7yfmKs2vWwCH3y0bD3/cg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
t8QenPer/ULAp0gHKrhM4XGpIF61L8hnTwooe3PCRJonBMO3M/ugdK3zA+3w4JqYRRgFTD5rOWfs
AQOe9rRUzVIZoDallA3iBG80up3XOaxxdl/z1d0XGv+kpSrEF+HuS5FDhuhMJA0FvnefBzy2aGv5
8WVQNoDiga2Sw2cvOYkdiTH25ELDHWcnAEvZEDQUFiaAwX71Jr7Km7Nf7Y6uqa+sYmPdSjiEnpCw
bYIXpZ6siPLHzUxJ4o7UmA2x+tTmEER1Nli6Gn7BOMdTCnFCSFquAf0r9jWoSziQhHcpcG8sIHdv
u9p4UlH4bYaIwcTc9O1a1T533uWyObRaR9+6dNT79JNQ9wMWcBUA0B7MgTVcUklbdzvJObBcpfaf
DHxMKbfFWP2CmBQSc0eG+Pj6tpq24FplKflLSjJWLum/G1n0VqtQ+/LlpFrnUqURAf2ItBJ6uwzg
+jVC+TZITQyYFL3DTHYscDE/5LxJi58Imz8n6yXpoo2+hG1ImvMxj0kH

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lTjF4+z2C9mPHx/d5hnuYg2Dy7/DJu7F4dcSSbTHzClA4+Bg7acXMsOkxEwK9NHtqM2nN+sD8rAR
h+jLXQ9uF44mp4DvwEG5eV3LrY/lS1mrHN4Ca5Fr+b2PxKk+VX7q4wWspBmKtnahvBBLeHTGuMWt
2+JLqPNMA3Nhc97ZS3dguJGifmtitJJ26/yY4+GNaSqE09m/9aSnrD+1434GWV4n9K6pzs2Y4O6b
eMghrOTMGWMEzNgINkJ9pNjPNIGju51WOdp/z6QU1jM3GuAbQY0L0Bq4q9Tk849UN5LTUioQCpxo
eCTRgOrVh3uc3NogZkgwpEadBoRVjfjCD3V1aA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
