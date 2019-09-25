`timescale 1ns / 1ps

module test_alu;

	// Inputs
	reg [31:0] i_data_1;
	reg [31:0] i_data_2;
	reg [5:0] i_ctrl;

	// Outputs
	wire [31:0] o_out;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.i_data_1(i_data_1), 
		.i_data_2(i_data_2), 
		.i_ctrl(i_ctrl), 
		.o_out(o_out)
	);

	initial begin
		// Initialize Inputs
		i_data_1 = 0;
		i_data_2 = 0;
		i_ctrl = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//ADD
		i_data_1 = 32'b11;
		i_data_2 = 32'b10;
		#10 i_ctrl = 6'b100000;
		#100
		//SUB
		i_data_1 = 32'b11;
		i_data_2 = 32'b10;
		#10 i_ctrl = 6'b100010;
		//AND
		i_data_1 = 32'b11;
		i_data_2 = 32'b10;
		#10 i_ctrl = 6'b100100;
		#100		
		//OR
		i_data_1 = 32'b11;
		i_data_2 = 32'b10;
		#10 i_ctrl = 6'b100101;
		#100
		//XOR
		i_data_1 = 32'b11;
		i_data_2 = 32'b10;
		#10 i_ctrl = 6'b100110;
		#100		
		//NOR
		i_data_1 = 32'b11;
		i_data_2 = 32'b10;
		#10 i_ctrl = 6'b100111;
		#100
		//SRL
		i_data_1 = 32'b11111111;
		i_data_2 = 32'b11;
		#10 i_ctrl = 6'b000010;
		#100
		//SRA
		i_data_1 = 32'b11011111111111111111111111111011;
		i_data_2 = 32'b11;
		#10 i_ctrl = 6'b000011;
		
	end
      
endmodule

