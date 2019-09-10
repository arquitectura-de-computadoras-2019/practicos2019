`timescale 1ns/100ps

module toplevel_alu
#(
    parameter                               NB_DATA_BUS = 8,
    parameter                               NB_DBG_LED  = 3,
    parameter                               NB_OPCODE   = 6

)
(
    input wire                              i_clock,
    input wire      [NB_DATA_BUS-1 : 0]     i_switch,
    input wire                              i_btnL,                 // button 1st_ope
    input wire                              i_btnC,                 // button 2nd_ope
    input wire                              i_btnR,                 // button opcode
    input wire                              i_btnU,                 // reset button
    output wire     [NB_DATA_BUS-1 : 0]     o_led,
    output wire     [NB_DBG_LED-1 : 0]      o_led_dbg
);

    reg             [NB_DATA_BUS-1 : 0]     reg_first_operator;
    reg             [NB_DATA_BUS-1 : 0]     reg_second_operator;
    reg             [NB_OPCODE-1 : 0]       reg_opcode;
    reg             [NB_DBG_LED-1 : 0]      dbg_input;              //registro cuyo proposito es senializar que entrada fue latcheada

    wire                                    reset;
    wire                                    save_first_operator;
    wire                                    save_second_operator;
    wire                                    save_opcode;
    wire            [NB_DATA_BUS-1 : 0]     first_operator;
    wire            [NB_DATA_BUS-1 : 0]     second_operator;
    wire            [NB_OPCODE-1 : 0]       opcode;
    wire            [NB_DATA_BUS-1 : 0]     result;

    assign                                  save_first_operator     = i_btnL;
    assign                                  save_second_operator    = i_btnC;
    assign                                  save_opcode             = i_btnR;
    assign                                  reset                   = i_btnU;
    assign                                  first_operator          = reg_first_operator;
    assign                                  second_operator         = reg_second_operator;
    assign                                  opcode                  = reg_opcode;
    assign                                  o_led                   = result;
    assign                                  o_led_dbg               = dbg_input;

always @ (posedge i_clock)
begin

    if(reset)
    begin
        dbg_input               <= 3'b101;
        reg_first_operator      <= {NB_DATA_BUS{1'b0}};
        reg_second_operator     <= {NB_DATA_BUS{1'b0}};
        reg_opcode              <= {NB_OPCODE{1'b0}};
    end
    else if(save_first_operator)
    begin
        reg_first_operator      <= i_switch;
        dbg_input               <= 3'b100;
    end
    else if(save_second_operator)
    begin
        reg_second_operator     <= i_switch;
        dbg_input               <= 3'b011;
    end
    else if(save_opcode)
    begin
        reg_opcode              <= i_switch [NB_OPCODE-1 : 0];
        dbg_input               <= 3'b111;
    end
    else
    begin
        reg_first_operator      <= reg_first_operator;
        reg_second_operator     <= reg_second_operator;
        reg_opcode              <= reg_opcode;
        dbg_input               <= dbg_input;
    end
end


alu#(
    .NB_DATA_BUS(NB_DATA_BUS),
    .NB_OPCODE(NB_OPCODE)
    )
u_alu
    (
    .i_first_operator(first_operator),
    .i_second_operator(second_operator),
    .i_opcode(opcode),
    .o_result(result)
    );

endmodule