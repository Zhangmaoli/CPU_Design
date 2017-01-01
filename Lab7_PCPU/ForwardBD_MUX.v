`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:17:37 06/04/2016 
// Design Name: 
// Module Name:    ForwardBD_MUX 
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
module ForwardBD_MUX(
    input [1:0]ForwardBD,
	 input [31:0]ALUOutM,
	 input [31:0]RD2,
	 input [31:0]ResultW,
	 output reg [31:0]r2_out
    );
always @ (*)
begin
  case(ForwardBD)
    2'd0:r2_out = RD2;
	 2'd1:r2_out = ALUOutM;
	 default:r2_out = ResultW;
  endcase
end	 

endmodule

