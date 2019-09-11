`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:19:45 08/23/2018
// Design Name:   ALU
// Module Name:   /home/ise/VIRTUALBOX1/TP1a/Test9ALUADD.v
// Project Name:  TP1a
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test9ALUADD;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg [7:0] O;

	// Outputs
	wire [7:0] Z;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.O(O), 
		.Z(Z)
	);

	initial begin
		// Initialize Inputs
		A = 8'b00001111;
		B = 8'b00000001;
		O = 8'b00011111;
		for(i=0;i<8;i=i+1)
		begin
		O= O + 8'b00000001;
		#10;
		end
	end
      
endmodule

