`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 05:38:56 PM
// Design Name: 
// Module Name: one_bit_full_adder
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


module one_bit_full_adder(
    input i0,
    input i1,
    input cin, 
    output sum, 
    output cout);

    wire c0,s0,c1;

    one_bit_half_adder op1(.i0(i0),.i1(i1),.carry(c0),.sum(s0));
    one_bit_half_adder op2(.i0(s0),.i1(cin),.carry(c1),.sum(sum));

    or_gate op3(.A(c0),.B(c1),.C(cout));

endmodule
