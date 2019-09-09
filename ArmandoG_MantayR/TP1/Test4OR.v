`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:46:49 08/23/2018
// Design Name:   OR
// Module Name:   /home/ise/VIRTUALBOX1/TP1a/Test4OR.v
// Project Name:  TP1a
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: OR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test4OR;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire [7:0] Z;

	// Instantiate the Unit Under Test (UUT)
	OR uut (
		.A(A), 
		.B(B), 
		.Z(Z)
	);

	initial begin
		// Initialize Inputs
		A = 8'b11110000;
		B = 8'b00001100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

