`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:43:54 04/30/2016 
// Design Name: 
// Module Name:    Mux5b 
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
module Mux5b(
    input [4:0]a,
    input [4:0]b,
    input sw,
    output [4:0]out
    );

assign out=sw?a:b;


endmodule
