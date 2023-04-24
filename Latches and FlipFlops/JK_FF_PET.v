`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2023 09:19:28 PM
// Design Name: 
// Module Name: JK_FF_PET
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


module JK_FF_PET(
    input [0:0] J,
    input [0:0] K,
    input [0:0] CLK,
    output [0:0] Q,
    output [0:0] Q_not
    );

    wire D, JQ, KQ;
    nand_gate op1(.i_0(J),  .i_1(Q_not), .o_0(JQ));
    nand_gate op2(.i_0(~K), .i_1(Q),     .o_0(KQ));
    nand_gate op3(.i_0(JQ), .i_1(KQ),    .o_0(D) );

    wire Q1, Q1_not;
    SR_latch SR1(.S(D), .R(~D), .E(~CLK), .Q(Q1), .Q_not(Q1_not));
    SR_latch SR2(.S(Q1), .R(Q1_not), .E(CLK), .Q(Q), .Q_not(Q_not));
endmodule

