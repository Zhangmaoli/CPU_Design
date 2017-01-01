`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:38:32 04/30/2016 
// Design Name: 
// Module Name:    MainDecoder 
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
module MainDecoder(
	input [5:0]opcode,
	output reg MemtoReg,
	output reg MemWrite,
	output reg Branch,
	output reg ALUSrc,
	output reg RegDst,
	output reg RegWrite,
	output reg Jump,
	output reg[1:0]ALUOp
    );

parameter Rtype = 6'b000000;//add
parameter lw = 6'b100011;
parameter sw = 6'b101011;
parameter beq = 6'b000100;
parameter bgtz = 6'b000111;
parameter addi = 6'b001000;
parameter j = 6'b000010;

always@(opcode)
begin
	case(opcode)
		Rtype:
			begin
			RegDst<=1;
			ALUSrc<=0;
			MemtoReg<=0;
			RegWrite<=1;
			MemWrite<=0;
			Branch<=0;
			ALUOp<=2'b10;
			Jump<=0;
			end
		lw:
			begin
			RegDst<=0;
			ALUSrc<=1;
			MemtoReg<=1;
			RegWrite<=1;
			MemWrite<=0;
			Branch<=0;
			ALUOp<=2'b00;
			Jump<=0;
			end
		sw:
			begin
			RegDst<=0;
			ALUSrc<=1;
			MemtoReg<=0;
			RegWrite<=0;
			MemWrite<=1;
			Branch<=0;
			ALUOp<=2'b00;
			Jump<=0;
			end
		beq:
			begin
			RegDst<=0;
			ALUSrc<=0;
			MemtoReg<=0;
			RegWrite<=0;
			MemWrite<=0;
			Branch<=1;
			ALUOp<=2'b01;
			Jump<=0;
			end
		bgtz:
			begin
			RegDst<=0;
			ALUSrc<=0;
			MemtoReg<=0;
			RegWrite<=0;
			MemWrite<=0;
			Branch<=1;
			ALUOp<=2'b11;
			Jump<=0;
			end
		addi:
			begin
			RegDst<=0;
			ALUSrc<=1;
			MemtoReg<=0;
			RegWrite<=1;
			MemWrite<=0;
			Branch<=0;
			ALUOp<=2'b00;
			Jump<=0;
			end
		j:
			begin
			RegDst<=0;
			ALUSrc<=0;
			MemtoReg<=0;
			RegWrite<=0;
			MemWrite<=0;
			Branch<=0;
			ALUOp<=2'b00;
			Jump<=1;
			end
		default:
			begin
			RegDst<=0;
			ALUSrc<=0;
			MemtoReg<=0;
			RegWrite<=0;
			MemWrite<=0;
			Branch<=0;
			ALUOp<=2'b00;
			Jump<=0;
			end
		endcase
end

endmodule
