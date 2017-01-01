`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:03:11 04/30/2016
// Design Name:   main
// Module Name:   E:/ise_proj/lab5/maintest.v
// Project Name:  lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module maintest;

	// Inputs
	reg clk;
	reg rst;
	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clk(clk),
		.rst(rst)
	);


	 initial
	begin
	   clk = 0;
		forever
		begin
		#5;
		clk=~clk;
		end 
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		// Wait 100 ns for global reset to finish
		#10;
      rst=1;
		// Add stimulus here

	end
      
endmodule

