/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_bool_5 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] q
  );
  
  
  
  integer i;
  
  integer x;
  
  always @* begin
    for (i = 1'h0; i < 5'h10; i = i + 1) begin
      x = {b[(i)*1+0-:1], a[(i)*1+0-:1]};
      
      case (x)
        2'h0: begin
          q[(i)*1+0-:1] = alufn[0+0-:1];
        end
        2'h1: begin
          q[(i)*1+0-:1] = alufn[1+0-:1];
        end
        2'h2: begin
          q[(i)*1+0-:1] = alufn[2+0-:1];
        end
        2'h3: begin
          q[(i)*1+0-:1] = alufn[3+0-:1];
        end
        default: begin
          q[(i)*1+0-:1] = alufn[0+0-:1];
        end
      endcase
    end
  end
endmodule
