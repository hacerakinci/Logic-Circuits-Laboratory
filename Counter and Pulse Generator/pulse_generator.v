`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2023 09:12:17 PM
// Design Name: 
// Module Name: pulse_generator
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


module pulse_generator(
    input [15:0] Q_in,
    input [0:0] CLK,
    input [0:0] load,
    output [0:0] Q_out
    );

    reg [15: 0] Q_ara;
    
     always@(posedge CLK) begin
          Q_ara[15] <= (load & Q_in[15]) | (~load & Q_ara[14]);
          Q_ara[14] <= (load & Q_in[14]) | (~load & Q_ara[13]);
          Q_ara[13] <= (load & Q_in[13]) | (~load & Q_ara[12]);
          Q_ara[12] <= (load & Q_in[12]) | (~load & Q_ara[11]);
          Q_ara[11] <= (load & Q_in[11]) | (~load & Q_ara[10]);
          Q_ara[10] <= (load & Q_in[10]) | (~load & Q_ara[9]);
          Q_ara[9] <= (load & Q_in[9]) | (~load & Q_ara[8]);
          Q_ara[8] <= (load & Q_in[8]) | (~load & Q_ara[7]);
          Q_ara[7] <= (load & Q_in[7]) | (~load & Q_ara[6]);
          Q_ara[6] <= (load & Q_in[6]) | (~load & Q_ara[5]);
          Q_ara[5] <= (load & Q_in[5]) | (~load & Q_ara[4]);
          Q_ara[4] <= (load & Q_in[4]) | (~load & Q_ara[3]);
          Q_ara[3] <= (load & Q_in[3]) | (~load & Q_ara[2]);
          Q_ara[2] <= (load & Q_in[2]) | (~load & Q_ara[1]);
          Q_ara[1] <= (load & Q_in[1]) | (~load & Q_ara[0]);
          Q_ara[0] <= (load & Q_in[0]) | (~load & Q_ara[15]);
       end
       
       assign Q_out = Q_ara[15];

endmodule
