`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:50:37 08/23/2018
// Design Name:   PROGRAMA
// Module Name:   /home/ise/VIRTUALBOX1/TP1a/TestPrograma10.v
// Project Name:  TP1a
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PROGRAMA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestPrograma10;

	// Inputs
	reg [7:0] SWITCH;
	reg [2:0] BOT;
	reg CLK;

	// Outputs
	wire [7:0] LED;
	
	

	// Instantiate the Unit Under Test (UUT)
	PROGRAMA uut (
		.SWITCH(SWITCH), 
		.BOT(BOT), 
		.LED(LED),
		.CLK(CLK)
	);
	
	always 
	#1
	CLK= !CLK;
	

	initial begin
		// Initialize Inputs
		CLK=0;
		SWITCH = 0;
		BOT=0;
		end
		
		always begin
		
		
		SWITCH = 8'b00001011;	// 11
		#1;
		BOT = 1;
		#5
		BOT = 0;
		
		#20;
		SWITCH = 8'b00000001;   // 1
		#1;
		BOT = 2;
		#5
		BOT = 0;
		
		#20;
				
		SWITCH = 8'b00100000;  //suma
		#1;
		BOT = 4;
		#5
		BOT = 0;
		#100
		
		
		SWITCH = 8'b00100010;  //resta
		#1;
		BOT = 4;
		#5
		BOT = 0;
		#100
		
		SWITCH = 8'b00100100;  //and
		#1;
		BOT = 4;
		#5
		BOT = 0;
		#100
		
		SWITCH = 8'b00100101;  //or
		#1;
		BOT = 4;
		#5
		BOT = 0;
		#100
		
		SWITCH = 8'b00100110;  //xor
		#1;
		BOT = 4;
		#5
		BOT = 0;
		#100
		
		SWITCH = 8'b00000011;  //sra
		#1;
		BOT = 4;
		#5
		BOT = 0;
		#100
		
		SWITCH = 8'b00000010;  //srl
		#1;
		BOT = 4;
		#5
		BOT = 0;
		#100
		
		SWITCH = 8'b00100111;  //nor
		#1;
		BOT = 4;
		#5
		BOT = 0;
		#100;
		
		end

	      
endmodule

