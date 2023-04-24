`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2023 04:46:32 PM
// Design Name: 
// Module Name: D_FF_test
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


module D_FF_test();
    reg D;
    reg CLK;
    
    wire Q, Q_not;
    
    D_FF uut(.D(D),.CLK(CLK), .Q(Q), .Q_not(Q_not));
    
    initial begin
        D=0; CLK=0; #125;
        D=0; CLK=1; #125;
        D=1; CLK=0; #125;
        D=1; CLK=1; #125;
        D=0; CLK=0; #125;
        D=0; CLK=1; #125;
        D=1; CLK=0; #125;
        D=1; CLK=1; #125;      
    end
endmodule
