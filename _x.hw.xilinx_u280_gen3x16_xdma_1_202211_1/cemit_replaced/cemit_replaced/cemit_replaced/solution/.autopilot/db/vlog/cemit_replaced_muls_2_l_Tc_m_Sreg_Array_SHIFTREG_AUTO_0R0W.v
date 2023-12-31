// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module cemit_replaced_muls_2_l_Tc_m_Sreg_Array_SHIFTREG_AUTO_0R0W_core (
    clk,
    ce,
    din,
    addr,
    dout);

parameter DATA_WIDTH = 32;
parameter ADDR_WIDTH = 1;
parameter DEPTH = 2;

input clk;
input ce;
input [DATA_WIDTH-1:0] din;
input [ADDR_WIDTH-1:0] addr;
output [DATA_WIDTH-1:0] dout;

reg[DATA_WIDTH-1:0] ShiftRegMem[0:DEPTH-1];
integer i;



always @ (posedge clk)
begin
    if (ce)
    begin
        for(i=0;i<DEPTH-1;i=i+1)
            ShiftRegMem[i+1] <= ShiftRegMem[i];
        ShiftRegMem[0] <= din;
    end
end

assign dout = ShiftRegMem[addr];

endmodule

module cemit_replaced_muls_2_l_Tc_m_Sreg_Array_SHIFTREG_AUTO_0R0W (
    clk,
    reset,
    address0,
    ce0,
    we0,
    d0,
    q0);

parameter DataWidth = 32;
parameter AddressRange = 2;
parameter AddressWidth = 1;

input clk;
input reset;
input [AddressWidth-1:0] address0;
input ce0;
input we0;
input [DataWidth-1:0] d0;
output [DataWidth-1:0] q0;

cemit_replaced_muls_2_l_Tc_m_Sreg_Array_SHIFTREG_AUTO_0R0W_core #(
    .DATA_WIDTH( DataWidth ),
    .ADDR_WIDTH( AddressWidth ),
    .DEPTH( AddressRange ))
cemit_replaced_muls_2_l_Tc_m_Sreg_Array_SHIFTREG_AUTO_0R0W_core_U(
    .clk(clk),
    .ce(we0),
    .din(d0),
    .addr(address0),
    .dout(q0)
);

endmodule
