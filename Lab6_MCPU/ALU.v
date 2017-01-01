`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:03 05/10/2016 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	input [31:0]SrcA,
	input [31:0]SrcB,
	input [2:0]ALUControl,
	output reg Zero,
	output reg [31:0]ALUResult
    );
parameter	A_AND	= 3'b000;
parameter	A_OR	= 3'b001;
parameter	A_ADD	= 3'b010;
parameter	A_SUB = 3'b110;
parameter	A_SOLT = 3'b111;

always@(*)
begin
	case(ALUControl)
		A_AND: 	ALUResult<=SrcA&SrcB;
		A_OR:	 	ALUResult<=SrcA|SrcB;
		A_ADD: 	ALUResult<=SrcA+SrcB;
		A_SUB: 	ALUResult<=SrcA-SrcB;
		A_SOLT:
		begin
					if(SrcA<=SrcB)
						ALUResult<=1;
					else ALUResult<=0;
		end
		default: ALUResult<=0;
	endcase
	if(ALUResult==0)
		Zero<=1;
	else Zero<=0;
end

endmodule
