`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2023 09:20:15 PM
// Design Name: 
// Module Name: AsyncCounter
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


module AsyncCounter(
    input [0:0] CLK,
    output [0:0] Q0,
    output [0:0] Q1,
    output [0:0] Q2,
    output [0:0] Q3
    );

    wire one = 1'b1;
    wire zero = 1'b0;
    wire Q0_not, Q1_not, Q2_not, Q3_not;

    JK_FF_PET FF0(one, one, CLK, Q0, Q0_not);
    JK_FF_PET FF1(one, one, Q0,  Q1, Q1_not);
    JK_FF_PET FF2(one, one, Q1,  Q2, Q2_not);
    JK_FF_PET FF3(one, one, Q2,  Q3, Q3_not);
endmodule

