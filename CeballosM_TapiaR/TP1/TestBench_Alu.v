`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:18:08 09/13/2016
// Design Name:   modulo_alu
// Module Name:   C:/Documents and Settings/ALU/TestBench_Alu.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: modulo_alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestBench_Alu;

	// Inputs
	reg [7:0] nr1;
	reg [7:0] nr2;
	reg [5:0] operacion;

	// Outputs
	wire [7:0] resultado;

	// Instantiate the Unit Under Test (UUT)
	modulo_alu uut (
		.nr1(nr1), 
		.nr2(nr2), 
		.operacion(operacion), 
		.resultado(resultado)
	);

	initial begin
		// Initialize Inputs
		
		//test suma
		nr1 = 8'b00001111;
		nr2 = 8'b00001111;
		operacion = 6'b100000;
		#10;
		//resultado esperado: 8d	OK
		
		//test resta
		nr1 = 8'b00000110;
		nr2 = 8'b00000010;
		operacion = 6'b100010;
		#10;
		//resultado esperado: 4d	OK
		
		//test AND
		nr1 = 8'b00000110;
		nr2 = 8'b00000010;
		operacion = 6'b100100;
		#10;
		//resultado esperado 2d	OK
		
		//test OR
		nr1 = 8'b00000110;
		nr2 = 8'b00000010;
		operacion = 6'b100101;
		#10;
		//resultado esperado 110b OK
		
		//test XOR
		nr1 = 8'b00000110;
		nr2 = 8'b00000010;
		operacion = 6'b100110;
		#10;
		//resultado esperado: 100b OK
		
		//test SRL
		nr1 = 8'b00000110;
		nr2 = 8'b00000010;
		operacion = 6'b000010;
		#10;
		//resultado esperado 1d NO OK
		
		//test SRA
		nr1 = 8'b10000110;
		nr2 = 8'b00000100;
		operacion = 6'b000011;
		#10;
		//resultado esperado 11110000 NO OK
		
		//test NOR
		nr1 = 8'b00000110;
		nr2 = 8'b00000010;
		operacion = 6'b100111;
		#10;
		
		
		// Wait 100 ns for global reset to finish
       
	end
      
endmodule

