`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2023 01:08:13 PM
// Design Name: 
// Module Name: nand_test
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


module nand_test();
    reg i0;
    reg i1;
    
    wire o1;
    
    nand_gate uut(.i_0(i0), .i_1(i1), .o_0(o1));
    
    initial begin
        i0 = 0; i1= 0; #250;
        i0 = 0; i1= 1; #250;
        i0 = 1; i1= 0; #250;
        i0 = 1; i1= 1; #250;
    end
    
endmodule
