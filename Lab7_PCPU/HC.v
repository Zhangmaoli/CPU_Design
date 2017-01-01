`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:54 06/04/2016 
// Design Name: 
// Module Name:    HC 
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
module HU(//相关性处理
   input rst_n,
   input [1:0]BranchD,
	input [4:0]RsD,
	input [4:0]RtD,
	input [4:0]RtE,
	input [4:0]RsE,
	input [4:0]WriteRegE,
	input MemtoRegE,RegWriteE,MemtoRegM,RegWriteM,RegWriteW,
	input [4:0]WriteRegM,
	input [4:0]WriteRegW,
	input [1:0]PCSrcD,
	output StallF,
	output StallD,
	output reg [1:0]ForwardAD,
	output reg [1:0]ForwardBD,
	output FlushE,
	output reg [1:0]ForwardAE,
	output reg [1:0]ForwardBE
    );

assign StallF    = ((MemtoRegE&&(RtE==RsD||RtE==RtD))||((BranchD==2'd1||BranchD==2'd2)&&(RegWriteE||(MemtoRegM&&RegWriteM))&&(WriteRegE==RsD||WriteRegE==RtD)))?1:0;
assign StallD    =  (~rst_n||StallF)?1:0;

always@(*)//ForwardAD
begin
  if((BranchD==2'd1||BranchD==2'd2)&&RegWriteM&&WriteRegM==RsD)
    ForwardAD = 2'd1;
  else if((BranchD==2'd1||BranchD==2'd2)&&RegWriteW&&WriteRegW==RsD)
    ForwardAD = 2'd2;
  else 
    ForwardAD = 2'd0;
end
always@(*)//ForwardBD
begin
  if((BranchD==2'd1||BranchD==2'd2)&&RegWriteM&&WriteRegM==RtD)
    ForwardBD = 2'd1;
  else if((BranchD==2'd1||BranchD==2'd2)&&RegWriteW&&WriteRegW==RsD)
    ForwardBD = 2'd2;
  else 
    ForwardBD = 2'd0;
end

assign FlushE    =  (PCSrcD==2'd0)?0:1;

always@(*)//ForwardAE
begin
 if(RegWriteM&&WriteRegM==RsE)
    ForwardAE = 2'b10;
 else if(RegWriteW&&WriteRegW==RsE)
    ForwardAE = 2'b01;
 else
    ForwardAE = 2'b00;
end 
always@(*)//ForwardBE
begin
 if(RegWriteM&&WriteRegM==RtE)
    ForwardBE = 2'b10;
 else if(RegWriteW&&WriteRegW==RtE)
    ForwardBE = 2'b01;
 else
    ForwardBE = 2'b00;
end  
 
endmodule
