`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2019 17:15:01
// Design Name: 
// Module Name: TP1_ALU_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TP1_ALU_tb();
    
    
    //local parameters
      localparam    N_BITS_IN  = 6;

      
      //CLOCK Y RESET
      reg i_clk;
      reg i_rst;
      
      //INPUTS    
      reg i_btn_1;
      reg i_btn_2;
      reg i_btn_3;
      reg [N_BITS_IN-1:0] i_Switches;
       
      //OUTPUT  
      wire [N_BITS_IN-1:0] o_ALU_Out;
      
       // CLOCK GENERATOR  
             always begin
                   #5
                   i_clk = ~i_clk;
             end
      
      
      
      initial begin
              #0
              i_clk         = 1'b1;
              i_rst         = 1'b1;
              i_btn_1       = 1'b0;
              i_btn_2       = 1'b0;
              i_btn_3       = 1'b0;
              i_Switches    = {N_BITS_IN{1'b0}};
              
              #2
              i_rst         = 1'b0;
              
              #10
              i_Switches    = 39; //Operador A
              i_btn_1       = 1;
              
              #10
              i_btn_1       = 0;
              i_Switches    = 3; //Operador B
              i_btn_2       = 1;
              
                           
              #10
              i_btn_2      = 0;
              i_Switches    = 32; //ADD
              i_btn_3       = 1;


              #10
              i_btn_3       = 0;
              
              #10
              i_Switches    = 34; //SUB
              i_btn_3       = 1;
              
              #10
              i_btn_3       = 0;
              
              #10
              i_Switches    = 36; //AND
              i_btn_3       = 1;
 
              #10
              i_btn_3       = 0;
              
              #10
              i_Switches    = 37; //OR
              i_btn_3       = 1;
              
              #10
              i_btn_3       = 0;
              
              #10
              i_Switches    = 38; //XOR
              i_btn_3       = 1;
              
              #10
              i_btn_3       = 0;
              
              #10
              i_Switches    = 39; //NOR
              i_btn_3       = 1;
              
              #10
              i_btn_3       = 0;
              
              #10
              i_Switches    = 3; //SRA
              i_btn_3       = 1;
              
              #10
              i_btn_3       = 0;
              
              #10
              i_Switches    = 2; //SRL
              i_btn_3       = 1;
              
              #10
              i_btn_3       = 0;
                                                     
                       
              #50
              $finish;
                            
          end
          
       
      
      
      TP1_ALU  
              #(
                .N_BITS_IN           (N_BITS_IN    )
               )
               
       u_TP1_ALU_01
              (
                .i_clk          (i_clk ),
                .i_rst          (i_rst ),
                .i_btn_1        (i_btn_1),
                .i_btn_2        (i_btn_2),
                .i_btn_3        (i_btn_3),
                .i_Switches     (i_Switches),
                .o_ALU_Out      (o_ALU_Out)
              );
      
      
     wire    [N_BITS_IN-1:0]  a  = TP1_ALU_tb.u_TP1_ALU_01.r_alu_A;
     wire    [N_BITS_IN-1:0]  b  = TP1_ALU_tb.u_TP1_ALU_01.r_alu_B;
     //wire    [N_BITS_IN-1:0]  s  = TP1_ALU_tb.u_TP1_ALU_01.r_alu_Sel;
      
endmodule
