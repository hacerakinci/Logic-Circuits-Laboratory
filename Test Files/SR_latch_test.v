`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2023 03:47:16 PM
// Design Name: 
// Module Name: SR_latch_test
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


module SR_latch_test();
    reg S;
    reg R;
    reg E;
    
    wire Q, Q_not;
    
    SR_latch uut(.S(S), .R(R), .E(E), .Q(Q), .Q_not(Q_not));
    
    initial begin
        S = 0; R = 0; E = 0; #125;
        S = 0; R = 1; E = 0; #125;
        S = 1; R = 0; E = 0; #125;
        S = 1; R = 1; E = 0; #125;
        S = 1; R = 0; E = 1; #125;
        S = 0; R = 1; E = 1; #125;
        S = 0; R = 0; E = 1; #125;
        S = 1; R = 1; E = 1; #125;                                                              
    end
endmodule
