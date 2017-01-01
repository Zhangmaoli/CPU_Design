`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:13:57 06/04/2016 
// Design Name: 
// Module Name:    ALUSrcE_MUX 
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
module ALUSrcE_MUX(
   input [31:0]RD2_outE,
	input [15:0]extend_out,
	input  ALUSrcE,
	output [31:0]SrcBE
    );

assign SrcBE[15:0] = (~ALUSrcE)?RD2_outE[15:0]:extend_out;
assign SrcBE[31:16]= (~ALUSrcE)?RD2_outE[31:16]:(extend_out[15:15]==0)?16'h0000:16'hFFFF;

endmodule
