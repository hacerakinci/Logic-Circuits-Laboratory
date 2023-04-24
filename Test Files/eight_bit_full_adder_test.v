`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 09:47:17 PM
// Design Name: 
// Module Name: eight_bit_full_adder_test
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


module eight_bit_full_adder_test();
    reg [7:0] i0;
    reg [7:0] i1;
    reg cin;
    
    wire cout;
    wire [7:0] sum;
    
    eight_bit_full_adder uut(.i0(i0), .i1(i1), .cin(cin), .sum(sum), .carry(cout));
    
    initial begin
        i0 = 8'b00011101; i1 = 8'b00000101; cin = 0; #125;
        i0 = 8'b00110011; i1 = 8'b01011100; cin = 0; #125;
        i0 = 8'b00010001; i1 = 8'b00011100; cin = 0; #125;
        i0 = 8'b10111111; i1 = 8'b00000010; cin = 0; #125;
        i0 = 8'b11001000; i1 = 8'b01011111; cin = 0; #125;
        i0 = 8'b00110001; i1 = 8'b00011001; cin = 0; #125;
        i0 = 8'b01001110; i1 = 8'b11111111; cin = 0; #125;
        i0 = 8'b00101011; i1 = 8'b00111011; cin = 0; #125;
    end
    
endmodule
