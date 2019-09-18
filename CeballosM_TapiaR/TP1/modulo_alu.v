`timescale 1ns / 1ps

//parte 1: nombre del modulo, entradas y salidas
module modulo_alu #(parameter lenD = 8, parameter lenO = 6)
( 
	
	input signed [lenD-1:0] nr1,
	input signed [lenD-1:0] nr2,
	input [lenO-1:0] operacion,
	output reg [lenD-1:0] resultado
	

    );
	
	 
	 always @(*)
	 begin
	 
	 case(operacion)
	 6'b100000 : resultado = nr1+nr2; //add
	 6'b100010 : resultado = nr1-nr2; //sub
	 6'b100100 : resultado = nr1&nr2; //and
	 6'b100101 : resultado = nr1|nr2; //or
	 6'b100110 : resultado = nr1^nr2; //xor
	 6'b000011 : resultado = nr1 >> nr2; //SRA                                                a nr1 se hace un right shift por nr2-bits, se rellena con ceros (lgico)
	 6'b000010 : resultado = nr1 >>> nr2; //SRL                                                   se rellena con unos (si es negativo, sino con ceros)
	 6'b100111 : resultado = ~(nr1|nr2); 
	 
	 default: resultado = -1;
	 
	 endcase
	 end


endmodule
