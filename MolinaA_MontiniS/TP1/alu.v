`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:58:25 08/31/2019 
// Design Name: 
// Module Name:    alu 
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
module alu #
(
	//PARAMETROS
	parameter NB_DATA=8,
	parameter NB_OP=6,
	parameter OP_ADD = 6'b100000, // SUMA B a A
	parameter OP_SUB = 6'b100010, // RESTA B a A
	parameter OP_AND = 6'b100100, // A AND B
	parameter OP_OR  = 6'b100101, // A OR B
	parameter OP_XOR = 6'b100110, // A XOR B
	parameter OP_SRA = 6'b000011, // SHIFT R (DER) ARITMETICO >>>
	parameter OP_SRL = 6'b000010, // SHIFT R (DER) LOGICO >>
	parameter OP_NOR = 6'b100111	// A NOR B
)
(
	//SALIDAS
	output reg	[NB_DATA-1:0] 	o_LEDS
	
	//ENTRADAS
	input								i_clock,
	input	 						 	i_bA,		//botón que setea operando A
	input	 						 	i_bB,	 	//botón que setea operando B
	input	 							i_bOP,	//botón que setea la operación
	input			[NB_DATA-1:0]	i_Switch,
);
	 
	 reg 	[NB_OP-1:0] 	OP;
	 reg	[NB_DATA-1:0]	A;
	 reg	[NB_DATA-1:0]	B;
	 
	always @(*)
	begin
		case (OP)
			OP_ADD:  o_LEDS	= 	A		+ 		B; // SUMA B a A
			OP_SUB:  o_LEDS	= 	A		- 		B; // RESTA B a A
			OP_AND:  o_LEDS	= 	A 		& 		B; // A AND B
			OP_OR :  o_LEDS	= 	A 		| 		B; // A OR B
			OP_XOR:  o_LEDS	= 	A 		^ 		B; // A XOR B
			OP_SRA:  o_LEDS	= 	A 		>>> 	B; // SHIFT R (DER) ARITMETICO >>>
			OP_SRL:  o_LEDS	=	A 		>> 	B; // SHIFT R (DER) LOGICO >>
			OP_NOR:  o_LEDS	= ~(A		| 		B); // NOR
			default: o_LEDS	= {NB_DATA{1'b0}}; //llenar de 0 	
		endcase
	end
	always @(posedge i_clock)
	begin
		case ({i_bA, i_bB, i_bOP})	//concateno los botones de entrada que me indican si es el dato A o el B o la operación
		3'b100:	A	<= 	i_Switch; //dato A 
		3'b010:	B	<= 	i_Switch; //dato B
		3'b001:	OP	<=		i_Switch; //Operación
		default:	
			begin
				A	<= A;
				B	<= B;
				OP <= OP;			
			end
		endcase
	end
endmodule
