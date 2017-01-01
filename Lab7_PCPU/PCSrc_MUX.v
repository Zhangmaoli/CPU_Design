`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:18 06/04/2016 
// Design Name: 
// Module Name:    PCSrc_MUX 
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
module PCSrcD_MUX(
   input [1:0]PCSrcD,
   input [6:0]PC_plus1F,
	input [6:0]PC_BranchD,
	input [6:0]ins_extend,
	input [6:0]JR,
	output reg [6:0]PC
    );
always @ (*)
begin
  case(PCSrcD)
    2'd0:PC = PC_plus1F;
	 2'd1:PC = PC_BranchD;
	 2'd2:PC = JR;
	 2'd3:PC = ins_extend;
  endcase
end
endmodule

