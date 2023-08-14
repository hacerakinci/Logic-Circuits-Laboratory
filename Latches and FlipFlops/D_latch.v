`timescale 1ns / 1ps

module D_latch(
    input [0:0] D,
    input [0:0] E,
    output [0:0] Q,
    output [0:0] Q_not
    );
    
    wire D_E1, D_E2; 
  
    nand_gate op1(D, E, D_E1);
    nand_gate op2(~D, E, D_E2);
    nand_gate op3(D_E1, Q_not, Q);
    nand_gate op4(D_E2, Q, Q_not);
    
endmodule
