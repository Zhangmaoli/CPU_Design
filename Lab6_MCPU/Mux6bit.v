`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:19:11 05/10/2016 
// Design Name: 
// Module Name:    Mux6bit 
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
module Mux6bit(
    input [5:0]a,
    input [5:0]b,
    input sw,
    output [5:0]out
    );

assign out=sw?b:a;		//1:b   0:a
endmodule