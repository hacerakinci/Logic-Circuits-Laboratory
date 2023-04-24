`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 09:44:12 PM
// Design Name: 
// Module Name: eight_bit_full_adder
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


module eight_bit_full_adder(
    input [7:0] i0,
    input [7:0] i1,
    input cin,
    output[7:0] sum,
    output carry,
    output last_carry
    );
    
    wire c0, c1, c2, c3, c4, c5, c6;
    
    one_bit_full_adder op1(.i0(i0[0]),.i1(i1[0]),.cin(cin),.sum(sum[0]),.cout(c0));
    one_bit_full_adder op2(.i0(i0[1]),.i1(i1[1]),.cin(c0),.sum(sum[1]),.cout(c1));
    one_bit_full_adder op3(.i0(i0[2]),.i1(i1[2]),.cin(c1),.sum(sum[2]),.cout(c2));
    one_bit_full_adder op4(.i0(i0[3]),.i1(i1[3]),.cin(c2),.sum(sum[3]),.cout(c3));
    one_bit_full_adder op5(.i0(i0[4]),.i1(i1[4]),.cin(c3),.sum(sum[4]),.cout(c4));
    one_bit_full_adder op6(.i0(i0[5]),.i1(i1[5]),.cin(c4),.sum(sum[5]),.cout(c5));
    one_bit_full_adder op7(.i0(i0[6]),.i1(i1[6]),.cin(c5),.sum(sum[6]),.cout(c6));
    one_bit_full_adder op8(.i0(i0[7]),.i1(i1[7]),.cin(c6),.sum(sum[7]),.cout(carry));
    
    assign last_carry = c6;
endmodule
