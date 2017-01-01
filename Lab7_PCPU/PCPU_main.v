`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:29 06/04/2016 
// Design Name: 
// Module Name:    PCPU_main 
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
module PCPU_main(
    input clk,
	 input rst_n,
	 output [6:0] PCF
    );
	 
  wire [1:0]PCSrcD;
  wire [1:0]BranchD;
  wire [6:0]PCBranchD;
  wire [6:0]PCin;
  wire StallF,StallD;
  wire [31:0]ins;
  wire [31:0]insD;
  wire [6:0]PC_plus1D;
  wire RegWriteD,MemtoRegD,MemWriteD,ALUSrcD,RegDstD;
  wire [3:0]ALUControlD;
  wire [4:0]WriteRegW;
  wire [31:0]ResultW;
  wire [31:0]RD1;//寄存器文件读出1
  wire [31:0]RD2;//读出2
  wire [31:0]r1_out;
  wire [31:0]r2_out;
  wire [1:0]ForwardAD;
  wire [1:0]ForwardBD;
  wire [1:0]ForwardAE;
  wire [1:0]ForwardBE;
  wire [31:0]ALUOutM;
  wire FlushE;
  wire RegWriteE,MemtoRegE,MemWriteE,ALUSrcE,RegDstE;
  wire [3:0]ALUControlE;
  wire [31:0]RD1_out;
  wire [31:0]RD2_out;
  wire [4:0]RsE;
  wire [4:0]RtE;
  wire [4:0]RdE;
  wire [15:0]extend_out;
  wire [4:0]WriteRegE;
  wire [31:0]SrcAE;
  wire [31:0]SrcBE;
  wire [31:0]RD2_outE;
  wire [31:0]alu_out;
  wire RegWriteM,MemtoRegM,MemWriteM,RegWriteW;
  wire [31:0]WriteDataM;
  wire [4:0]WriteRegM;
  wire [31:0]RD;
  wire [31:0]ReadDataW;
  wire [31:0]ALUOutW;
  wire MemtoRegW;
  wire [4:0]ALUControlE_modify;
  
  assign ALUControlE_modify[4:0] = {0,{ALUControlE}};
 
//*********************************************IF****************************************************// 
  PCSrcD_MUX PCSrcD_Mux(PCSrcD,PCF+7'b0000001,PCBranchD,insD[6:0],r1_out[6:0],PCin);
  PC_Reg PC_Reg(clk,rst_n,PCin,StallF,PCF);
  ROM ROM(.a(PCF),.spo(ins));
 
//*********************************************ID***************************************************// 
  D_Reg D_Reg(clk,ins,StallD,PCF+7'd1,PCSrcD,insD,PC_plus1D);
  CU CU(insD[31:26],insD[5:0],rst_n,RegWriteD,MemtoRegD,MemWriteD,ALUSrcD,RegDstD,ALUControlD);
  RegFile Reg(~clk,rst_n,insD[25:21],insD[20:16],WriteRegW,ResultW,RegWriteW,RD1,RD2);
  ForwardAD_MUX ForwardAD_Mux(ForwardAD,ALUOutM,RD1,ResultW,r1_out);
  ForwardBD_MUX ForwardBD_Mux(ForwardBD,ALUOutM,RD2,ResultW,r2_out);
  PCSrc_BranchD PCSrc_BranchD(rst_n,r1_out,r2_out,insD[31:26],insD[5:0],insD[20:16],StallF,PCSrcD,BranchD);
  PC_Plus PC_Plus(PC_plus1D,insD[6:0],PCBranchD);
  
//*********************************************EX***************************************************//
  E_Reg E_Reg(clk,FlushE,RegWriteD,MemtoRegD,MemWriteD,ALUSrcD,RegDstD,ALUControlD,RD1,RD2,insD[25:21],insD[20:16],insD[15:11],insD[15:0],RegWriteE,MemtoRegE,MemWriteE,ALUSrcE,RegDstE,ALUControlE,RD1_out,RD2_out,RsE,RtE,RdE,extend_out);
  RegDstE_MUX RegDstE_Mux(RtE,RdE,RegDstE,WriteRegE);
  ForwardAE_MUX ForwardAE_Mux(RD1_out,ALUOutM,ResultW,ForwardAE,SrcAE);
  ForwardBE_MUX ForwardBE_Mux(RD2_out,ALUOutM,ResultW,ForwardBE,RD2_outE);
  ALUSrcE_MUX ALUSrcE_Mux(RD2_outE,extend_out,ALUSrcE,SrcBE);
  ALU ALU(SrcAE,SrcBE,ALUControlE_modify,alu_out);
 
//*********************************************MM**************************************************//
  M_Reg M_Reg(clk,RegWriteE,MemtoRegE,MemWriteE,alu_out,RD2_outE,WriteRegE,RegWriteM,MemtoRegM,MemWriteM,ALUOutM,WriteDataM,WriteRegM);
  RAM Ram(ALUOutM[8:2],WriteDataM,MemWriteM,clk,RD);
 
//*********************************************WB*************************************************// 
  W_Reg W_Reg(clk,RegWriteM,MemtoRegM,RD,ALUOutM,WriteRegM,RegWriteW,MemtoRegW,ReadDataW,ALUOutW,WriteRegW);
  MemtoRegW_MUX MemtoRegW_Mux(MemtoRegW,ReadDataW,ALUOutW,ResultW);

//Hazard unit
  HU HU(.rst_n(rst_n),.BranchD(BranchD),.RsD(insD[25:21]),.RtD(insD[20:16]),.RtE(RtE),.RsE(RsE),.PCSrcD(PCSrcD),.WriteRegE(WriteRegE),.MemtoRegE(MemtoRegE),.RegWriteE(RegWriteE),.MemtoRegM(MemtoRegM),.RegWriteM(RegWriteM),.RegWriteW(RegWriteW),.WriteRegM(WriteRegM),.WriteRegW(WriteRegW),.StallF(StallF),.StallD(StallD),.ForwardAD(ForwardAD),.ForwardBD(ForwardBD),.FlushE(FlushE),.ForwardAE(ForwardAE),.ForwardBE(ForwardBE));
endmodule

