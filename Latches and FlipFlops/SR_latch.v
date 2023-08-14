`timescale 1ns / 1ps

module SR_latch(
    input [0:0] S,
    input [0:0] R,
    input [0:0] E,
    input [0:0] Q,
    input [0:0] Q_not
    );

    wire SE, RE;
    nand_gate op1(S, E, SE);
    nand_gate op2(R, E, RE);

    nand_gate op3(Q_not, SE, Q);
    nand_gate op4(Q, RE, Q_not);
endmodule
