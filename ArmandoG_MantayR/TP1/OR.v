`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:44:45 08/23/2018 
// Design Name: 
// Module Name:    OR 
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
module OR(
    input [7:0] A,
    input [7:0] B,
    output [7:0] Z
    );
	assign Z=A|B;

endmodule