`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2023 04:24:34 PM
// Design Name: 
// Module Name: D_latch_test
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


module D_latch_test();
    reg D;
    reg E;
    
    wire Q, Q_not;
    
    D_latch uut(.D(D), .E(E), .Q(Q), .Q_not(Q_not));
    
    initial begin
        D = 0; E = 0; #250;
        D = 1; E = 0; #250;        
        D = 0; E = 1; #250;
        D = 1; E = 1; #250;
    end
    
endmodule
