`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:20:08 09/21/2016 
// Design Name: 
// Module Name:    input_Alu 
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
module input_Alu
(

clk,dato,reset,p1,p2,p3,salida
    );

parameter longDS = 8;   //Parametro Longitud Dato y Salida
parameter longO = 6;		//Parametro longitud Operacion

input clk;
input p1;
input p2;
input p3;
input reset;
input [longDS-1:0]dato;
output [longDS-1:0]salida;
reg signed [longDS-1:0] nr1; //registro para primer nr
reg signed [longDS-1:0] nr2; //registro para segundo nr.
reg [longO-1:0] op;    //registro para operacion

	 
//adquisicin de los datos ingresados por los switches
always @(posedge clk)

begin
    if(reset)
        begin
        nr1<=0;
        nr2<=0;
        op<=0;
        end
	if(p1==1)
		begin
		nr1<=dato;
		end
	if(p2==1)
		begin
		nr2<=dato;
		end
	if(p3==1)
		begin
		op<=dato[longO-1:0];
		end
end

//ya se obtuvieron los datos, hay que darselos a ALU
//instanciando modulo_alu
modulo_alu #(.lenD(8),.lenO(6))alu (
	.nr1(nr1),
	.nr2(nr2),
	.operacion(op),
	.resultado(salida)
	);

endmodule

