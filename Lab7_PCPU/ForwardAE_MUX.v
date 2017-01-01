`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:05:12 06/04/2016 
// Design Name: 
// Module Name:    ForwardAE_MUX 
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
module ForwardAE_MUX(
   input [31:0]RD1_out,
	input [31:0]ALUOutM,
	input [31:0]ResultW,
   input [1:0]ForwardAE,
	output reg [31:0]SrcAE
);
always @ (*)
begin
  case(ForwardAE)
    2'd0:SrcAE = RD1_out;
	 2'd1:SrcAE = ResultW;
	 2'd2:SrcAE = ALUOutM;
	 default:SrcAE = 32'b0;
  endcase
end
  
endmodule

