`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 06:04:21 PM
// Design Name: 
// Module Name: four_bit_full_adder_test
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


module four_bit_full_adder_test();
    reg [3:0] i0;
    reg [3:0] i1;
    reg cin;
    
    wire cout;
    wire [3:0] sum;
    
    four_bit_full_adder uut(.i0(i0), .i1(i1), .cin(cin), .sum(sum), .carry(cout));
    
    initial begin
        i0 = 4'b1000; i1 = 4'b0001; cin = 0; #125;
        i0 = 4'b0010; i1 = 4'b0111; cin = 0; #125;
        i0 = 4'b0100; i1 = 4'b0101; cin = 0; #125;
        i0 = 4'b1011; i1 = 4'b1010; cin = 0; #125;
        i0 = 4'b1110; i1 = 4'b0101; cin = 0; #125;
        i0 = 4'b1111; i1 = 4'b1001; cin = 0; #125;
        i0 = 4'b0110; i1 = 4'b0011; cin = 0; #125;
        i0 = 4'b1000; i1 = 4'b1100; cin = 0; #125;
    end
    
endmodule
