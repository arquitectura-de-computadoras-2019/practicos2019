`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:28:33 08/23/2018
// Design Name:   ADD
// Module Name:   /home/ise/VIRTUALBOX1/TP1a/Test1ADD.v
// Project Name:  TP1a
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ADD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test1ADD;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire [7:0] Z;

	// Instantiate the Unit Under Test (UUT)
	ADD uut (
		.A(A), 
		.B(B), 
		.Z(Z)
	);

	initial begin
		// Initialize Inputs
		A = 8'D255;
		B = 8'D1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

