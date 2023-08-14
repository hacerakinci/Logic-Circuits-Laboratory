`timescale 1ns / 1ps

module sixteen_bit_full_adder_subtractor(
    input [15:0] i0,
    input [15:0] i1,
    input cin,
    output[15:0] sum,
    output carry,
    output last_carry
    );
    
    wire [15:0] xor_i1;
    
    xor_gate xor1(.A(cin), .B(i1[0]), .C(xor_i1[0]));
    xor_gate xor2(.A(cin), .B(i1[1]), .C(xor_i1[1]));
    xor_gate xor3(.A(cin), .B(i1[2]), .C(xor_i1[2]));
    xor_gate xor4(.A(cin), .B(i1[3]), .C(xor_i1[3]));
    xor_gate xor5(.A(cin), .B(i1[4]), .C(xor_i1[4]));
    xor_gate xor6(.A(cin), .B(i1[5]), .C(xor_i1[5]));
    xor_gate xor7(.A(cin), .B(i1[6]), .C(xor_i1[6]));
    xor_gate xor8(.A(cin), .B(i1[7]), .C(xor_i1[7]));
    xor_gate xor9(.A(cin), .B(i1[8]), .C(xor_i1[8]));
    xor_gate xor10(.A(cin), .B(i1[9]), .C(xor_i1[9]));
    xor_gate xor11(.A(cin), .B(i1[10]), .C(xor_i1[10]));
    xor_gate xor12(.A(cin), .B(i1[11]), .C(xor_i1[11]));
    xor_gate xor13(.A(cin), .B(i1[12]), .C(xor_i1[12]));
    xor_gate xor14(.A(cin), .B(i1[13]), .C(xor_i1[13]));
    xor_gate xor15(.A(cin), .B(i1[14]), .C(xor_i1[14]));
    xor_gate xor16(.A(cin), .B(i1[15]), .C(xor_i1[15]));
    
    
    wire c0 ;
    
    eight_bit_full_adder op1(.i0(i0[7:0]),.i1(xor_i1[7:0]),.cin(cin),.sum(sum[7:0]),.carry(c0));
    eight_bit_full_adder op2(.i0(i0[15:8]),.i1(xor_i1[15:8]),.cin(c0),.sum(sum[15:8]),.carry(carry));
    
    assign last_carry = c0;
endmodule
