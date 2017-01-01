`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:58:51 06/04/2016 
// Design Name: 
// Module Name:    ForwardAD_MUX 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ForwardAD_MUX(
    input [1:0]ForwardAD,
	 input [31:0]ALUOutM,
	 input [31:0]RD1,
	 input [31:0]ResultW,
	 output reg [31:0]r1_out
    );
always @(*)
begin
  case(ForwardAD)
    2'd0:r1_out = RD1;
	 2'd1:r1_out = ALUOutM;
	 default:r1_out = ResultW;
  endcase
end	 

endmodule
