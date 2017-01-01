`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:26:19 05/10/2016 
// Design Name: 
// Module Name:    Mux5bit 
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
module Mux5bit(
    input [4:0]a,
    input [4:0]b,
    input sw,
    output [4:0]out
    );

assign out=sw?b:a;


endmodule