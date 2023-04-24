`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2023 12:59:00 PM
// Design Name: 
// Module Name: SR_latch_without_enable_test
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


module SR_latch_without_enable_test();

    reg S;
    reg R;
    
    wire Q;
    wire Q_not;
    
    SR_latch_without_enable uut(.S(S), .R(R), .Q(Q), .Q_not(Q_not));
    
    initial begin
        S = 1; R = 0; #200;
        S = 0; R = 0; #200;
        S = 0; R = 1; #200;
        S = 0; R = 0; #200;
        S = 1; R = 1; #200;
    end
endmodule
