`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:08:56 06/04/2016 
// Design Name: 
// Module Name:    ForwardBE_MUX 
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
module ForwardBE_MUX(
   input [31:0]RD2_out,
	input [31:0]ALUOutM,
	input [31:0]ResultW,
   input [1:0]ForwardBE,
	output reg [31:0]RD2_outE
);
always @ (*)
begin
  case(ForwardBE)
    2'd0:RD2_outE = RD2_out;
	 2'd1:RD2_outE = ResultW;
	 2'd2:RD2_outE = ALUOutM;
	 default:RD2_outE = 32'b0;
  endcase
end

endmodule

