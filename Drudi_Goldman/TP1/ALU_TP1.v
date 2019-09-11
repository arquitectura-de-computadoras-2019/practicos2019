`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UNC
// Engineer: Drudi - Goldman
// 
// Create Date:    13:22:41 03/11/2019 
// Design Name: 
// Module Name:    ALU_TP1 
// Project Name: Trabajo Práctico 1 - ALU
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
module ALU_TP1
#( 
	//parametros
	parameter	N_BUS 	= 8,
	parameter	N_OP 		= 6,
	parameter	OP_ADD 	= 6'b100000,	//SUMA
	parameter	OP_SUB 	= 6'b100010,	//RESTA
	parameter	OP_AND 	= 6'b100100,	//AND
	parameter	OP_OR	 	= 6'b100101,	//OR
	parameter	OP_XOR	= 6'b100110,	//XOR
	parameter	OP_SRA	= 6'b000011,	//SHIFT R (DER) ARITMETICO >>>
	parameter	OP_SRL	= 6'b000010,	// SHIFT R (DER) LOGICO >>
	parameter	OP_NOR	= 6'b100111		// NOR
	
)
(
	//	ENTRADAS:
	input	[N_BUS-1:0]	i_A;
	input	[N_BUS-1:0]	i_B;
	input	[N_OP-1:0]	i_OP;
	
	//	SALIDAS: 
	output	[N_BUS-1:0] o_RES;
	
	//WIRES Y REGS
	wire	[N_BUS-1:0]	RegA;
	wire	[N_BUS-1:0]	RegB;
	reg	[N_BUS-1:0]	RegR;
	
	//ASSIGNS
	assign	RegA = i_A;
	assign	RegB = i_B;
	assign	RegR = o_RES;
	
    );
	 
	always @(*)
		begin
			case (i_OP)
				OP_ADD 	:	RegR		= 		RegA + RegB; 
				OP_SUB 	: 	RegR 		= 		RegA - RegB; 
				OP_AND 	: 	RegR 		= 		RegA & RegB;
				OP_OR 	: 	RegR 		= 		RegA | RegB;
				OP_XOR	: 	RegR 		= 		RegA ^ RegB;
				OP_SRA	: 	RegR		= 		RegA >>> RegB;
				OP_SRL	: 	RegR 		= 		RegA >> RegB;
				OP_NOR	: 	RegR	 	=		~(RegA | RegB);
			endcase
		end


endmodule
