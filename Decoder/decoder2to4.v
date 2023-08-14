`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 07:53:34 PM
// Design Name: 
// Module Name: decoder2to4
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


module decoder2to4(
    input wire [1:0] i1,
    output reg [3:0] o1
    );
    
    always @(*) 
    begin
        case(i1)
            2'd0: o1 <= 4'b0001;
            2'd1: o1 <= 4'b0010;
            2'd2: o1 <= 4'b0100;
            2'd3: o1 <= 4'b1000;
 
        endcase
    end
endmodule
