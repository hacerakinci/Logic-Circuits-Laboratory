`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2023 11:10:43 PM
// Design Name: 
// Module Name: pulse_generator_test
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


   module pulse_generator_test();
       reg [15:0] Q_in;
       reg CLK;
       reg load;
       wire Q_out;
       
       pulse_generator uut(.Q_in(Q_in), .CLK(CLK), .load(load), .Q_out(Q_out));
       
       initial begin
            CLK=0;
//            Q_in=16'b1010101010101010; load=1; #50; // 1/2 frequency of clock signal
//            load=0; #200;
//              Q_in=16'b1100110011001100; load=1; #50; // 1/4 frequency of clock signal
//              load=0; #200;
//           Q_in=16'b1111000011110000; load=1; #50; // 1/8 frequency of clock signal
//            load=0; #200;
//            Q_in=16'b1000000010000000; load=1; #50; // 1/7 pulse-gap duration rate
//            load=0; #200;
//           Q_in=16'b1110000000000000; load=1; #50; // 3/13 pulse-gap duration rate
//            load=0; #200;
            Q_in=16'b1111111111100000; load=1; #50; // 11/5 pulse-gap duration rate
            load=0; #200;
        end
        
        always begin 
            #25; CLK=~CLK;
        end 
endmodule  
