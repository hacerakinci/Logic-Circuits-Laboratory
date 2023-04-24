`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 05:03:57 PM
// Design Name: 
// Module Name: one_bit_half_adder
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

module one_bit_half_adder(
    input i0,
    input i1,
    output carry,
    output sum);
   
    and_gate AND1(.A(i0),.B(i1),.C(carry));
    xor_gate XOR1(.A(i0), .B(i1),.C(sum));

endmodule
