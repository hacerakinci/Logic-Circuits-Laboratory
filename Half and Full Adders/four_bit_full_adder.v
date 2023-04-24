`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 05:50:50 PM
// Design Name: 
// Module Name: four_bit_full_adder
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


module four_bit_full_adder(
    input [3:0] i0,
    input [3:0] i1,
    input cin,
    output[3:0] sum,
    output carry
    );
    
    wire c0, c1, c2;
    
    one_bit_full_adder op1(.i0(i0[0]),.i1(i1[0]),.cin(cin),.sum(sum[0]),.cout(c0));
    one_bit_full_adder op2(.i0(i0[1]),.i1(i1[1]),.cin(c0),.sum(sum[1]),.cout(c1));
    one_bit_full_adder op3(.i0(i0[2]),.i1(i1[2]),.cin(c1),.sum(sum[2]),.cout(c2));
    one_bit_full_adder op4(.i0(i0[3]),.i1(i1[3]),.cin(c2),.sum(sum[3]),.cout(carry));
    
endmodule
