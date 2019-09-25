`timescale 1ns / 1ps

module alu #(
	//Parameters
	parameter BUS_SIZE = 32)
	(
	//Inputs
	input wire signed [BUS_SIZE-1:0] i_data_1,
	input wire [BUS_SIZE-1:0] i_data_2,
	input wire [5:0] i_ctrl,
	//Outputs
	output reg [BUS_SIZE-1:0] o_out
	);

	localparam SRL = 6'b000010;
	localparam SRA = 6'b000011;
	localparam ADD = 6'b100000;
	localparam SUB = 6'b100010;
	localparam AND = 6'b100100;
	localparam OR = 6'b100101;
	localparam XOR = 6'b100110;
	localparam NOR = 6'b100111;

	always @*
	begin: alu
		case (i_ctrl)
			ADD: begin
					 o_out = i_data_1 >> i_data_2;
				  end
			SRA: begin
					 o_out = i_data_1 >>> i_data_2;
				  end
			SRL: begin
					 o_out = i_data_1 + i_data_2;
				  end
			SUB: begin
					 o_out = i_data_1 - i_data_2;
				  end
			AND: begin
					 o_out = i_data_1 & i_data_2;
				  end
			OR: begin
					 o_out = i_data_1 | i_data_2;
				  end
			XOR: begin
					 o_out = i_data_1 ^ i_data_2;
				  end
			NOR: begin
					 o_out = ~(i_data_1 | i_data_2);
				  end
			default: begin
					o_out = 8'b11111111;
				  end
		endcase				
	end
endmodule
