/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_adder_6 (
    input [15:0] a,
    input [15:0] b,
    input alufn0,
    output reg [15:0] q,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  wire [(5'h10+0)-1:0] M_fulladder_s;
  wire [(5'h10+0)-1:0] M_fulladder_cout;
  reg [(5'h10+0)-1:0] M_fulladder_a;
  reg [(5'h10+0)-1:0] M_fulladder_b;
  reg [(5'h10+0)-1:0] M_fulladder_cin;
  
  genvar GEN_fulladder0;
  generate
  for (GEN_fulladder0=0;GEN_fulladder0<5'h10;GEN_fulladder0=GEN_fulladder0+1) begin: fulladder_gen_0
    full_adder_14 fulladder (
      .a(M_fulladder_a[GEN_fulladder0*(1)+(1)-1-:(1)]),
      .b(M_fulladder_b[GEN_fulladder0*(1)+(1)-1-:(1)]),
      .cin(M_fulladder_cin[GEN_fulladder0*(1)+(1)-1-:(1)]),
      .s(M_fulladder_s[GEN_fulladder0*(1)+(1)-1-:(1)]),
      .cout(M_fulladder_cout[GEN_fulladder0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  
  wire [16-1:0] M_xbcircuit_xb;
  reg [16-1:0] M_xbcircuit_b;
  reg [1-1:0] M_xbcircuit_alufn0;
  alu_adder_XB_15 xbcircuit (
    .b(M_xbcircuit_b),
    .alufn0(M_xbcircuit_alufn0),
    .xb(M_xbcircuit_xb)
  );
  
  reg [15:0] xb;
  
  reg [15:0] s;
  
  always @* begin
    M_xbcircuit_alufn0 = alufn0;
    M_xbcircuit_b = b;
    xb = M_xbcircuit_xb;
    M_fulladder_a = a;
    M_fulladder_b = xb;
    M_fulladder_cin[0+0-:1] = alufn0;
    M_fulladder_cin[1+14-:15] = M_fulladder_cout[0+14-:15];
    q = M_fulladder_s;
    s = M_fulladder_s;
    z = ~(s[15+0-:1] | s[14+0-:1] | s[13+0-:1] | s[12+0-:1] | s[11+0-:1] | s[10+0-:1] | s[9+0-:1] | s[8+0-:1] | s[7+0-:1] | s[6+0-:1] | s[5+0-:1] | s[4+0-:1] | s[3+0-:1] | s[2+0-:1] | s[1+0-:1] | s[0+0-:1]);
    v = (a[15+0-:1] & xb[15+0-:1] & ~s[15+0-:1]) | (~a[15+0-:1] & ~xb[15+0-:1] & s[15+0-:1]);
    n = s[15+0-:1];
  end
endmodule
