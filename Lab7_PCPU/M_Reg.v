`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:33 06/04/2016 
// Design Name: 
// Module Name:    M_Reg 
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
module M_Reg(
   input clk,
	input RegWriteE,MemtoRegE,MemWriteE,
   input [31:0]alu_out,
   input [31:0]WriteDataE,
   input [4:0]WriteRegE,
   output reg RegWriteM,MemtoRegM,MemWriteM,
   output reg [31:0]ALUOutM,
   output reg [31:0]WriteDataM,
   output reg [4:0]WriteRegM
    );

always@(posedge clk)
begin
          RegWriteM <= RegWriteE;
			 MemtoRegM <= MemtoRegE;
		    MemWriteM <= MemWriteE;
			 ALUOutM   <= alu_out;
			 WriteDataM<= WriteDataE;
			 WriteRegM <= WriteRegE;
end

endmodule

