`timescale 1ns / 1ps

module D_FF(
    input [0:0] D,
    input [0:0] CLK,
    output [0:0] Q,
    output [0:0] Q_not
    );
    
    wire latch1, Q1, Q1_not;
    D_latch op1(D, ~CLK, Q1, Q1_not);
    D_latch op2(Q1, CLK, Q, Q_not);
    
endmodule
