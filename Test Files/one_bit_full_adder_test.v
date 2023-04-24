`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 09:28:21 PM
// Design Name: 
// Module Name: one_bit_full_adder_test
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


module one_bit_full_adder_test();
	reg i1, i2, cin;
	
	wire cout, sum;
	
	one_bit_full_adder uut(.i0(i1), .i1(i2), .cin(cin), .sum(sum), .cout(cout));
	
	initial begin
		i1=0; i2=0; cin=0; #125;
		i1=0; i2=0; cin=1; #125;
		i1=1; i2=0; cin=0; #125;
		i1=1; i2=0; cin=1; #125;
		i1=0; i2=1; cin=0; #125;
		i1=0; i2=1; cin=1; #125;
		i1=1; i2=1; cin=0; #125;
		i1=1; i2=1; cin=1; #125;
	end
endmodule
