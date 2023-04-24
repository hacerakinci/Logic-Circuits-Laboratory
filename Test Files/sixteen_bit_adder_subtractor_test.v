`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 11:01:48 PM
// Design Name: 
// Module Name: sixteen_bit_adder_subtractor_test
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


module sixteen_bit_full_adder_subtractor_test();
    reg [15:0] i0;
    reg [15:0] i1;
    reg cin;
    
    wire cout;
    wire [15:0] sum;
    
    sixteen_bit_full_adder_subtractor uut(.i0(i0), .i1(i1), .cin(cin), .sum(sum), .carry(cout));
    
    initial begin
        i0 = 16'd23; i1 = 16'd3; cin = 0; #125;
        i0 = 16'd21; i1 = 16'd75; cin = 0; #125;
        i0 = 16'd16800; i1 = 16'd16900; cin = 0; #125;
        i0 = 16'd6983; i1 = 16'd6650; cin = 0; #125;
        i0 = 16'd325; i1 = 16'd97; cin = 0; #125;
        i0 = 16'd44; i1 = 16'd190; cin = 0; #125;
        i0 = 16'd463; i1 = 16'd241; cin = 0; #125;
        i0 = 16'd86; i1 = 16'd572; cin = 0; #125;
    
    end
    
endmodule