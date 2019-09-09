`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:10 08/23/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input signed [7:0] A,
    input signed [7:0] B,
    input [7:0] O,
    output [7:0] Z
    );
	 wire [7:0] sum, rest, y, o, x, s1,s2,no;
	 reg  [7:0] salida;	
	 ADD suma(A,B,sum);
	 SUB resta(A,B,rest);
	 AND and1(A,B,y);
	 OR  or1(A,B,o);
	 XOR xor1(A,B,x);
	 SRA sra1(A,B,s1);
	 SRL srl1(A,B,s2);
	 NOR nor1(A,B,no);

	 assign Z=salida;
	 
	always @(O)
	begin
	case(O)
	8'b00100000: salida = sum;			//suma
	8'b00100001: salida = s2;			//srl
	8'b00100010: salida = rest;		//resta
	8'b00100011: salida = s1;        //sra
	8'b00100100: salida = y;			//and
	8'b00100101: salida = o;			//or
	8'b00100110: salida = x;			//xor
	8'b00100111: salida = no;			//nor
	default 	  : salida = sum;
	endcase
	end
endmodule
