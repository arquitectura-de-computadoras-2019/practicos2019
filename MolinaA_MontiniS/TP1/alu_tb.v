`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:32:42 09/08/2019
// Design Name:   alu
// Module Name:   D:/AC2019/tp1/alu_tb.v
// Project Name:  tp1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg 			i_clock;
	reg 			i_bA;
	reg 			i_bB;
	reg 			i_bOP;
	reg	[7:0]	i_Switch;

	// Outputs
	wire 	[7:0] o_LEDS;

	// Instantiate the Unit Under Test (UUT)
	alu alu_tb01 (
		.o_LEDS(o_LEDS), 
		.i_clock(i_clock), 
		.i_bA(i_bA), 
		.i_bB(i_bB), 
		.i_bOP(i_bOP), 
		.i_Switch(i_Switch)
	);

	initial begin
		// Initialize Inputs
		i_clock = 0;
		i_bA = 0;
		i_bB = 0;
		i_bOP = 0;
		i_Switch = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10 	i_Switch = 8'b00001010; 
				i_bA = 1;
		#15 	i_bA = 0;
		#10 	i_Switch = 8'b00000011; 
				i_bB = 1;
		#15 	i_bB = 0;
		#10 	i_Switch = 6'b100000; 
				i_bOP = 1;
		#15 	i_bOP = 0;
		#10 	i_Switch = 6'b100010; 
				i_bOP = 1;
		#15 	i_bOP = 0;
		#10 	i_Switch = 6'b100100; 
				i_bOP = 1;
		#15 	i_bOP = 0;
		#10 	i_Switch = 6'b100101; 
				i_bOP = 1;
		#15 	i_bOP = 0;
		#10 	i_Switch = 6'b100110; 
				i_bOP = 1;
		#15 	i_bOP = 0;
		#10 	i_Switch = 6'b000011; 
				i_bOP = 1;
		#15 	i_bOP = 0;
		#10 	i_Switch = 6'b000010; 
				i_bOP = 1;
		#15 	i_bOP = 0;
		#10 	i_Switch = 6'b100111; 
				i_bOP = 1;
		#15 	i_bOP = 0;
		#10 	i_Switch = 8'b11111011; 
				i_bA = 1;
		#15 	i_bA = 0;
		#10 	i_Switch = 6'b000010; 
				i_bOP = 1;
		#15 	i_bOP = 0;
		#10 	i_Switch = 6'b000011; 
				i_bOP = 1;
		#15 	i_bOP = 0;
		
	end
	initial
		#480	$finish;
   always begin
		#5		i_clock=~i_clock;
		end
	 
		
endmodule

