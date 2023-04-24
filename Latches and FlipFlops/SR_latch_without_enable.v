`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2023 12:50:23 PM
// Design Name: 
// Module Name: SR_latch_without_enable
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


module SR_latch_without_enable(
    input [0:0] S,
    input [0:0] R,
    output [0:0] Q,
    output [0:0] Q_not
    );


    nand_gate op1(.i_0(~S), .i_1(Q_not), .o_0(Q));
    nand_gate op2(.i_0(~R), .i_1(Q), .o_0(Q_not));
    
endmodule
