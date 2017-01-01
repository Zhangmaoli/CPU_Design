`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:13 06/04/2016 
// Design Name: 
// Module Name:    D_reg 
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
module D_Reg(
  input clk,
  input [31:0]ins,
  input StallD,
  input [6:0]PC_plus1F,
  input [1:0]PCSrcD,
  output reg [31:0]insD,
  output reg [6:0]PC_plus1D
    );

always@(posedge clk)
begin
  if(~StallD)
     begin
	  if(PCSrcD!=2'd0)
		  begin
        insD <= 32'd0;
		  PC_plus1D <= 7'd0;
		  end
     else
        begin
	     insD <= ins;
	     PC_plus1D <= PC_plus1F;
		  end
	  end
end
endmodule

