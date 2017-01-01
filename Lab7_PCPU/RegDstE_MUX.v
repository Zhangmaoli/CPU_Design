`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:34 06/04/2016 
// Design Name: 
// Module Name:    RegDstE_MUX 
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
module RegDstE_MUX(
    input [4:0]RtE,
	 input [4:0]RdE,
	 input RegDstE,
	 output [4:0]WriteRegE
    );
 
  assign WriteRegE = (~RegDstE)?RtE:RdE;

endmodule

