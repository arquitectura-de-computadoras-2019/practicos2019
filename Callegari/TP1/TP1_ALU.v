`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2019 20:33:16
// Design Name: 
// Module Name: TP1_ALU
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

/* ALU Arithmetic and Logic Operations
----------------------------------------------------------------------
|ALU_Sel |   ALU Operation
----------------------------------------------------------------------
| 100000 |   ALU_Out = A + B;
----------------------------------------------------------------------
| 100010 |   ALU_Out = A - B;
----------------------------------------------------------------------
| 100100 |   ALU_Out = A and B;
----------------------------------------------------------------------
| 100101 |   ALU_Out = A or B;
----------------------------------------------------------------------
| 100110 |   ALU_Out = A xor B;
----------------------------------------------------------------------
| 100111 |   ALU_Out = A nor B;
----------------------------------------------------------------------
| 000011 |   ALU_Out = A sra B;
----------------------------------------------------------------------
| 000010 |   ALU_Out = A srl B;
----------------------------------------------------------------------*/


//arithmetic shift uses context to determine the fill bits, so:

//    SRA arithmetic right shift (>>>) - shift right specified number of bits, fill with value of sign bit if expression is signed, otherwise fill with zero,
//    SLA arithmetic left shift (<<<) - shift left specified number of bits, fill with zero.

//On the other hand, SRL logical shift (<<, >>) always fill the vacated bit positions with zeroes.



module TP1_ALU
#(parameter N_BITS_IN =6 
)
(   // CLOCK Y RESET
    input   wire    i_clk ,
    input   wire    i_rst ,
    
    // INPUTS
    input   wire    i_btn_1,
    input   wire    i_btn_2,
    input   wire    i_btn_3,
    input   wire    [N_BITS_IN-1:0] i_Switches,
    
    // OUTPUTS
    output      [N_BITS_IN-1:0] o_ALU_Out       // Resultado
    );
    
    
   reg signed     [N_BITS_IN-1:0] r_alu_A ;       // Operando 1
   reg      [N_BITS_IN-1:0] r_alu_B ;       // Operando 2
   reg      [5:0] r_alu_Sel ;               // Selector Operacion
   
   reg      [N_BITS_IN-1:0] r_alu_Out ;
    

   assign   o_ALU_Out = r_alu_Out;

    
    always @(posedge i_clk) begin
        
        if( i_rst) begin
            r_alu_A <= {N_BITS_IN{1'b0}};
            r_alu_B <= {N_BITS_IN{1'b0}};
            r_alu_Sel <= {6'b100101};          // Operacion en inicio: OR
        end 
        else 
////            if (i_btn_1)    
////                r_alu_A <= i_Switches;         //Carga Operando 1
////            else if (i_btn_2)
////                r_alu_B <= i_Switches;         //Carga Operando 2
////            else if (i_btn_3)
////                r_alu_Sel <= i_Switches[5:0];  //Carga Operación
                
            casez({i_btn_1, i_btn_2, i_btn_3})
                3'b1?? : r_alu_A <= i_Switches;         //Carga Operando 1
                3'b?1? : r_alu_B <= i_Switches;         //Carga Operando 2
                3'b??1 : r_alu_Sel <= i_Switches[5:0];  //Carga Operación 
            endcase
    end
    
    
 
    always @(*) begin
        
        case (r_alu_Sel)
            6'b100000 :     r_alu_Out = r_alu_A + r_alu_B;          // ADD  
            6'b100010 :     r_alu_Out = r_alu_A - r_alu_B;          // SUB
            6'b100100 :     r_alu_Out = r_alu_A & r_alu_B;          // AND
            6'b100101 :     r_alu_Out = r_alu_A | r_alu_B;          // OR
            6'b100110 :     r_alu_Out = r_alu_A ^ r_alu_B;          // XOR
            6'b100111 :     r_alu_Out = ~(r_alu_A | r_alu_B);       // NOR
            6'b000011 :     r_alu_Out = r_alu_A >>> r_alu_B;        // SRA
            6'b000010 :     r_alu_Out = r_alu_A >> r_alu_B;         // SRL
                        
            default: r_alu_Out = 0;
         endcase
    end
   
endmodule
