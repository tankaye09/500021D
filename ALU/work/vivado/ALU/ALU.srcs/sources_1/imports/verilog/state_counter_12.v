/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module state_counter_12 (
    input clk,
    input rst,
    input button,
    output reg [6:0] out
  );
  
  
  
  reg [6:0] M_register_1_d, M_register_1_q = 1'h0;
  
  wire [16-1:0] M_adder_q;
  wire [1-1:0] M_adder_z;
  wire [1-1:0] M_adder_v;
  wire [1-1:0] M_adder_n;
  reg [16-1:0] M_adder_a;
  reg [16-1:0] M_adder_b;
  reg [1-1:0] M_adder_alufn0;
  alu_adder_6 adder (
    .a(M_adder_a),
    .b(M_adder_b),
    .alufn0(M_adder_alufn0),
    .q(M_adder_q),
    .z(M_adder_z),
    .v(M_adder_v),
    .n(M_adder_n)
  );
  
  always @* begin
    M_register_1_d = M_register_1_q;
    
    if (button) begin
      M_adder_b = 1'h1;
    end else begin
      M_adder_b = 1'h0;
    end
    M_adder_a = M_register_1_q;
    M_adder_alufn0 = 1'h0;
    if (M_adder_q < 6'h21) begin
      M_register_1_d = M_adder_q;
      out = M_adder_q;
    end else begin
      M_register_1_d = 1'h0;
      out = 1'h0;
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_register_1_q <= 1'h0;
    end else begin
      M_register_1_q <= M_register_1_d;
    end
  end
  
endmodule
