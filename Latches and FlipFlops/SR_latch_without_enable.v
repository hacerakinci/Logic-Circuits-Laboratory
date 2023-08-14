`timescale 1ns / 1ps

module SR_latch_without_enable(
    input [0:0] S,
    input [0:0] R,
    output [0:0] Q,
    output [0:0] Q_not
    );


    nand_gate op1(.i_0(~S), .i_1(Q_not), .o_0(Q));
    nand_gate op2(.i_0(~R), .i_1(Q), .o_0(Q_not));
    
endmodule
