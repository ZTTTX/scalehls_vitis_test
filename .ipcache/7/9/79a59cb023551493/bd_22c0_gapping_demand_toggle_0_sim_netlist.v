// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sat Jun 10 17:01:59 2023
// Host        : xacc-head-000-5.csl.illinois.edu running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_gapping_demand_toggle_0_sim_netlist.v
// Design      : bd_22c0_gapping_demand_toggle_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_gapping_demand_toggle_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "1" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_15 U0
       (.CE(CE),
        .CLK(CLK),
        .L(1'b0),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S6UzRfhx3274ydlzuOLCdykmr9M1TmksfeBZZeoqduSL7eyFEaN+idKmvaIZikwgiBqa8HatTitr
ml3kb4nl6hplm1szVV7alhIZyDfQMEpHqvzetEEgpYMFzV9HXy6+2b9TSQtWdO4D55ahCvbzf3F4
rkP4meNNgA4O7/SRSPA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m7/naMetu4HfqrX6CREOQqHQkTYtll5voARmXRln+f6is9Ugg4h7d28KPWz9P3lr02JEkQ8uqi1m
svowtujQMhCR6AFSV4jtQGMxTc7BpEx8VukjZf6bxU/sFQ+lGSOSSJtPqIYeJgZqxnuSY+sqSGMi
MTVNgR8nlqYEZp/gR90pRcXFAFGsSyvYTAr3zyx8+1IAP5DthXASkWBaiKFuNLpcWK56zX/Cxvpo
Pg6u2+FpDh9y7sF/ZrF3CPHmNLjUzzttiW4mpGvZoRMf8aH/mYGc9BxHja84rB+J8Y/F6cwwRNG6
Dltzeh0Rf0PO2QtfDdZzfc8KGnwVp4/mBVcPWA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
b2inIkWroSErG1X9h909RAC/HxTDukwTtZUDaWOAHFt+34615IqkDO8qMUE2BIiVuDlHyHnhEX7H
6fefq27pR1z9Ydc5uHKjaNywARIlHjJnXzcZ5r109CWqSTZuR6RKwbRojITrUvkpwaVILMKib4o1
DwhLG7nPwrxUSXXW0I0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mwDYeqa55/TRo6YvnRnoIj1N4Du1eBLr+9n/oD81FdYM21x4x0AWWjIZmMf6imTcZXJuNxwaugGQ
Uh8uFybuF6iD6caG4mvdO8/yDCSa2ZqBMkx/nNfIlEhHnaQsZRdTq9hCPI3yQCtmT8/+xf938cks
jNZlnhXoKoH5OStiQmiuIY/yCRsDyipTV8BrhtpDlx9GRWA7skcmn+f3aMOMgYXSfU259ty/33m/
VYT3PAUvOe2uH6ParnWMFHlSdQpC1gqrDQLhkQjE9FyPU/0UILwmI4F+eq7nPilVDlMRCB+hf6X9
4MTWxuyMheHHSsHhSkbQyQZ5ql/+vAe6QzohMA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l+yC2mgPyz9bAllYryHGah4jqoZUB/GI+USFgadtz5RcklUs2TAEpTzUXuWgF7RwZblSiTApz/MS
j5FKYmGFC8vOA/cF0d51UfZPxs0KYuqTFrQ7jYYVgxMW/CVY5XW3u1kTZfXxAQLbELCM+HPdXKVg
BlX8HFz/xPVpB8GA8uHK/mHV/FK5orBscDcaB90Jo/ka/AfoEU9+kcu4nHNMoUtHHipYBgcnJ9ab
aieiXAe0REUjfo+bD4DIs+TbYONoCc8Ju+uZ6V+5TLBNxgMLtghYPTuh7pNRG4Xx4BSc5ihrtytS
p65NzlDh/Fh2xtFTskOlfJQJ2PoZG1UkKoIL1A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RePJv2RfjKCeYucJ15cIdrHZI2VczWWTB+BYCa4P6spe4XF5c1qTWXZkThVdzQqtqK93Y0W3Wmh3
WJE06xG4y40wyhZka8BNMnCnIpXkfQHsiR2kkmQUGbcLe1cFUWCzuyUatu97jXHcKUNnmjSCyf0J
kPynjGZg15lZJz+CDT1Bw2c9K8uIctSsudqgizW3OJqJVbP+hO3G2hQny3MeK4wc8t4r2cYPQxJZ
80xpg2HCehweq7vTcsRNR1tDaoRokzZp68mY+H/RqgD5Gk7D3ey3u0Vu8cvhU+xhaecQG6GEYCUj
8UlAcSD9daw45MS8JUXXOE7iHFgckCsFMOTkNQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DzFMXKmHXJyY7C54+oCZpWaoaMZi620q+tTS0JeNLUKZQ+hLuHZDBSFTFsreaxW77HgFUND5BzBP
m4XbnVvxHhmUggzv+4V3+32ChIUObxGIlCwFmja5ld42QvxZ0bIhst4p15PaJ5WDyAjvwtDmmhjY
mXPMRbzOh1/8QajYYibmJCh4Y1TPwKsSC1Mv3C+EevyscEyJrUBAVT7e6/DBVlnxnkN336P1ZbKh
CDgCtLaPGyvtoPrfUObdhdzFm6NfNMVrAEvkw+iye88YsyNC2pZh9ImUfGz5Scf8PfqXOwhv7Jeq
s+mc/nI63J56NXmXjCXzP/TZo6rR7Jc+E8+M8Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
fNc0k3TU1Vwhd//SRqkdnB6wzquSt6XpfV6hCW8oLbaFOHvLMNQtd0qMXb/vErUL7zwfEBFgqq5l
QyWWD6/ap22dv2e8Pk6kbpRvdXjkgxnMXynIgsXe7NaN7hhZ0eqHr7w+zKm4i22FLv9fGQJw10qi
DV6yao2A9ZDq3F01WfsuSVbkH62GAt3MMnHZnfgLzD5EYH1u4IJOvQb6NtcsPwsPQmK8DShdTyad
Qvg/of+Pb32pxedW/S7inw9ZOBv9o7kHIAVg93VXVEZ+HDffWvfg83r2rJZS8O18BAw3vAqQgSo5
x1GRR12CpVSQgTtdD2tQPcvqunpOuzD07A0WA1b3Sy0S2DFQUTmQVDg3N0J+HICtzmJ1P0yXaxjt
aTABAR5Woku3MZgJc4PcAJaphF+fAKpqS8im3wL3L8RHWvJQoWNiW1EZgfeGL4ma2RxYn1zHbetz
t+hqHkSMQ8QuuID1Sn3mrnAs9+6I1W0yoItZQPjP2d1FqS1ZPUoVARjM

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KUxDIVK7d2apeQKOI0gGdqXXN7vpcq00BY1tk43olrswU4CwSGrZutADHxWB2OhGGfUa42uEmTQb
gL0w2J4SQx3IoFcaGwhvvbmOGXrwjPHWuwsmMeuzM448gTJlTKaB67vBhR+11m4lu6dGoL64sJ0b
gt8gpxoEQzVeejP/Cm9PFE9AAakyZMbWAu8vQhO9R+YygtAHthcfwScVU6a4sy61aG6zv+NUh61p
ZYCju+E6dyq9sGP1KUEGQlQPG8O3AYdZ3n2mxFDxYbKDPZez9a85nFzjggEPFvtaVm6rC2LWcIL9
E/r1ytz9MmjVJFEZxwHx1eTl257U/Pz1Tp5TJQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MWhmEzjyM0GaAC/ilWgnEfNj3yHmN+NOjjkngxbwj5ROSElgzdY4i9lu5uzrJ1/Xtw6sFnVXMsdU
FQ+Uy4CoNEFOzbnMnvZMH0rs9k951iwjlvsw7isKFCFSDg3Z6q2zqybyABuA1iAtyPXCLNFeTU7A
RFBSPp1NKSZjx7chwFIRTCX+ybMtNEiWXcLrIMcxpiRcUDamxwN91DhbQagsk8ELSrdC3DplRbRm
jaqb5s45eNukpXD6a6nSZsgA1ravPIuQqsGXvezqEX/CijVp0zgk8qQiGEiRR0i6DKqbfDHqSlWR
WNsy4Pv0VPgpJuxD9833so52D6dPH4mUuIKe9Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C6GelxMkKs6bqQgaHITMIsmhXxg4bg9+QZFxJw8TC6KNxoUif7RmgUQtotCXNUf3g2VR6HOus64R
unR5bdK7dfldrCILDFY10v+VKI0GSSW3UaimaUZnzqOve9TNnp0Ex9DRwk0fXmQdZoXA4XpszVgr
M0hyfi44f4FUkKyuPm37d7Qd8Hi4BqmwhGIe6Bvel72Whe22MwCMILP1Ai7Xiu03gfP4mN9m9KWP
7ppPwvruWoct3q6TH/3HbAr87laTToDYsXpSaKGgF/ZLAp4wKXhhO+9Gc26/TyGh7/sJFgRHe5GN
WB7okQqvcz6ub3440BvNGMVZcagHQlSI7aT9PQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5168)
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
