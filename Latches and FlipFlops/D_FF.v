`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2023 04:40:30 PM
// Design Name: 
// Module Name: D_FF
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
