`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 05:09:14 PM
// Design Name: 
// Module Name: one_bit_half_adder_tester
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


module one_bit_half_adder_test();
	reg i1, i2;
	
	wire carry, sum;
	
	one_bit_half_adder uut(.i0(i1), .i1(i2), .carry(carry), .sum(sum));
	
	initial begin
		i1=0; i2=0; #250;
		i1=1; i2=0; #250;
		i1=0; i2=1; #250;
		i1=1; i2=1; #250;
	end
endmodule 