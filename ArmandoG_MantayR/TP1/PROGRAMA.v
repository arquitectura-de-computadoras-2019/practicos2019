`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:00 08/23/2018 
// Design Name: 
// Module Name:    PROGRAMA 
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
module PROGRAMA(
    input [7:0] SWITCH,
	 input [2:0] BOT,
    output [7:0] LED,
	 input CLK
    );
	 
	reg [7:0] DATOA,DATOB,OP;
	wire [7:0] SALIDA;
		
	always @(posedge CLK)
	begin
	if(BOT[0]==1)
	DATOA=SWITCH;
	else if (BOT[1]==1)
	DATOB=SWITCH;
	else if (BOT[2]==1)
	OP=SWITCH;
	end
	
	
	ALU alu(.A(DATOA),.B(DATOB),.O(OP),.Z(SALIDA));
	
	assign LED = SALIDA;

endmodule
