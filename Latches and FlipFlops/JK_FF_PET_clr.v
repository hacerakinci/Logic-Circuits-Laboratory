`timescale 1ns / 1ps

module JK_FF_PET_clr(
    input [0:0] J,
    input [0:0] K,
    input [0:0] CLK,
    input [0:0] CLR,
    output [0:0] Q,
    output [0:0] Q_not
    );

    wire D, JQ, KQ;
    nand_gate op1(.i_0(J),  .i_1(Q_not), .o_0(JQ));
    nand_gate op2(.i_0(~K), .i_1(Q),     .o_0(KQ));
    nand_gate op3(.i_0(JQ), .i_1(KQ),    .o_0(D) );

    wire Q1, Q1_not;
    SR_latch SR1(.S(D), .R(~D), .E(~CLK), .Q(Q1), .Q_not(Q1_not));
    
    wire D2 = Q1 | CLR;
    SR_latch SR2(.S(D2), .R(~D2), .E(CLK), .Q(Q), .Q_not(Q_not));

endmodule

