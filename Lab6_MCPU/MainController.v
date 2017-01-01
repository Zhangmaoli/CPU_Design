`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:36 05/10/2016 
// Design Name: 
// Module Name:    MainController 
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
module MainDecoder(//control_unit
	input clk,
	input rst,
   input [5:0]opcode,
	output reg MemtoReg,
	output reg RegDst,
	output reg lorD,
	output reg [1:0]PCSrc,
	output reg [1:0]ALUSrcB,
	output reg ALUSrcA,
	output reg IRWrite,
	output reg MemWrite,
	output reg PCWrite,
	output reg Branch,
	output reg RegWrite,
	output reg[1:0]ALUOp
    );

reg [3:0]next_state;
reg [3:0]curr_state;
parameter Fetch 			= 4'h0;//取址
parameter Decode 			= 4'h1;//译码
parameter MemAdr 			= 4'h2;//memory取址
parameter MemRead	 		= 4'h3;//memory读
parameter MemWriteback 	= 4'h4;//memory写回
parameter MemWritestate	= 4'h5;//memory写
parameter Execute 		= 4'h6;//执行
parameter ALUWriteback 	= 4'h7;//ALU写回
parameter Branchstate	= 4'h8;//分支
parameter ADDIExecute 	= 4'h9;//执行addi
parameter ADDIWriteback = 4'hA;//addi写回
parameter Jump 			= 4'hB;//无条件跳转
parameter Wait				= 4'hF;//等待


parameter Rtype 	= 6'b000000;//本实验中为add
parameter lw 		= 6'b100011;
parameter sw 		= 6'b101011;
parameter beq 		= 6'b000100;
parameter bgtz 	= 6'b000111;
parameter addi 	= 6'b001000;
parameter j 		= 6'b000010;

always@(*)
begin
	if(~rst)
	next_state <= Wait;
	else case(curr_state)
		Fetch 			:next_state<=Decode;
		Decode 			:
			begin
				case(opcode)
					Rtype :next_state<=Execute;	
					lw 	:next_state<=MemAdr;	
					sw 	:next_state<=MemAdr;	
					beq 	:next_state<=Execute;	
					bgtz  :next_state<=Branchstate;	
					addi  :next_state<=ADDIExecute;	
					j		:next_state<=Jump;
				  default:next_state<=Wait;
				endcase
			end
		MemAdr 			:
			begin
				case(opcode)
					lw		:next_state<=MemRead;
					sw		:next_state<=MemWritestate;
				  default:next_state<=Wait;
				endcase
			end
		MemRead	 		:next_state<=MemWriteback;
		MemWriteback 	:next_state<=Wait;
		MemWritestate	:next_state<=Wait;
		Execute 			:next_state<=ALUWriteback;
		ALUWriteback 	:next_state<=Wait;
		Branchstate		:next_state<=Wait;
		ADDIExecute 	:next_state<=ADDIWriteback;
		ADDIWriteback 	:next_state<=Wait;
		Jump 				:next_state<=Wait;
		Wait				:next_state<=Fetch;
		default			:next_state<=Fetch;				
	endcase
end
 
always@(*)
begin
	case(curr_state)
		Fetch 			:
			begin	
				MemtoReg<=0;
				RegDst<=0;
				lorD<=0;
				PCSrc<=2'b00;
				ALUSrcB<=2'b01;
				ALUSrcA<=0;
				IRWrite<=1;
				MemWrite<=0;
				PCWrite<=1;
				Branch<=0;
				RegWrite<=0;
				ALUOp<=2'b00;
			end
		Decode 			:
			begin
				MemtoReg<=0;
				RegDst<=0;
				lorD<=0;
				PCSrc<=2'b00;
				ALUSrcB<=2'b11;
				ALUSrcA<=0;
				IRWrite<=0;
				MemWrite<=0;
				PCWrite<=0;
				Branch<=0;
				RegWrite<=0;
				ALUOp<=2'b00;
			end
		MemAdr 			:
			begin
				MemtoReg<=0;
				RegDst<=0;
				lorD<=0;
				PCSrc<=2'b00;
				ALUSrcB<=2'b10;
				ALUSrcA<=1;
				IRWrite<=0;
				MemWrite<=0;
				PCWrite<=0;
				Branch<=0;
				RegWrite<=0;
				ALUOp<=2'b00;
			end
		MemRead	 		:
			begin
				MemtoReg<=0;
				RegDst<=0;
				lorD<=1;
				PCSrc<=2'b00;
				ALUSrcB<=2'b00;
				ALUSrcA<=0;
				IRWrite<=0;
				MemWrite<=0;
				PCWrite<=0;
				Branch<=0;
				RegWrite<=0;
				ALUOp<=2'b00;
			end
		MemWriteback 	:
			begin
				MemtoReg<=1;
				RegDst<=0;
				lorD<=0;
				PCSrc<=2'b00;
				ALUSrcB<=2'b00;
				ALUSrcA<=0;
				IRWrite<=0;
				MemWrite<=0;
				PCWrite<=0;
				Branch<=0;
				RegWrite<=1;
				ALUOp<=2'b00;
			end
		MemWritestate	:
			begin
				MemtoReg<=0;
				RegDst<=0;
				lorD<=1;
				PCSrc<=2'b00;
				ALUSrcB<=2'b00;
				ALUSrcA<=0;
				IRWrite<=0;
				MemWrite<=1;
				PCWrite<=0;
				Branch<=0;
				RegWrite<=0;
				ALUOp<=2'b00;
			end
		Execute 			:
			begin
				ALUSrcA<=1;
				ALUSrcB<=2'b00;
				ALUOp<=2'b10;
			end
		ALUWriteback 	:
			begin
				RegDst<=1;
				MemtoReg<=0;
				RegWrite<=1;
			end
		Branchstate		:
			begin
				MemtoReg<=0;
				RegDst<=0;
				lorD<=0;
				PCSrc<=2'b01;
				ALUSrcB<=2'b00;
				ALUSrcA<=1;
				IRWrite<=0;
				MemWrite<=0;
				PCWrite<=0;
				Branch<=1;
				RegWrite<=0;
				ALUOp<=2'b11;
			end
		ADDIExecute 	:
			begin
				MemtoReg<=0;
				RegDst<=0;
				lorD<=0;
				PCSrc<=2'b00;
				ALUSrcB<=2'b10;
				ALUSrcA<=1;
				IRWrite<=0;
				MemWrite<=0;
				PCWrite<=0;
				Branch<=0;
				RegWrite<=0;
				ALUOp<=2'b00;
			end
		ADDIWriteback  :
			begin
				MemtoReg<=0;
				RegDst<=0;
				lorD<=0;
				PCSrc<=2'b00;
				ALUSrcB<=2'b00;
				ALUSrcA<=0;
				IRWrite<=0;
				MemWrite<=0;
				PCWrite<=0;
				Branch<=0;
				RegWrite<=1;
				ALUOp<=2'b00;
			end
		Jump 				:
			begin
				MemtoReg<=0;
				RegDst<=0;
				lorD<=0;
				PCSrc<=2'b10;
				ALUSrcB<=2'b00;
				ALUSrcA<=0;
				IRWrite<=0;
				MemWrite<=0;
				PCWrite<=1;
				Branch<=0;
				RegWrite<=0;
				ALUOp<=2'b00;
			end
		Wait				:
			begin
				MemtoReg<=0;
				RegDst<=0;
				lorD<=0;
				PCSrc<=2'b00;
				ALUSrcB<=2'b00;
				ALUSrcA<=0;
				IRWrite<=0;
				MemWrite<=0;
				PCWrite<=0;
				Branch<=0;
				RegWrite<=0;
				ALUOp<=2'b00;
			end
	endcase
end


always@(posedge clk or negedge rst)
begin
	if(~rst)
		curr_state<=Wait;
	else
		curr_state<=next_state;
end
endmodule

