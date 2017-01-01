`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:42 06/04/2016 
// Design Name: 
// Module Name:    NPC 
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
module PC_Plus(
   input signed [6:0]PC_Plus1D,
	input signed [6:0]ins_extend,
	output [6:0]PCBranchD
    );
 assign PCBranchD = PC_Plus1D + ins_extend;

endmodule

