`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:06:56 08/23/2018 
// Design Name: 
// Module Name:    SRL 
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
module SRL(
    input [7:0] A,
    input [7:0] B,
    output [7:0] Z
    );
	assign Z=A>>B;

endmodule
