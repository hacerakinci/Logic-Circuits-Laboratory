`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2023 09:22:33 PM
// Design Name: 
// Module Name: AsyncCounter_test
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


module AsyncCounter_test();
    reg CLK;

    wire Q0, Q1, Q2, Q3;
    AsyncCounter uut(CLK, Q0, Q1, Q2, Q3);

    initial begin
        CLK = 0; #250;
    end
    always begin
        CLK = ~ CLK ; #25; // Toggle clock signal
    end
endmodule

