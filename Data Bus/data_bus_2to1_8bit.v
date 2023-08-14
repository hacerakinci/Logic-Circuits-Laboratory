`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 11:53:27 AM
// Design Name: 
// Module Name: data_bus_2to1_8bit
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


module data_bus_2to1_8bit(
    input [7:0] data1,
    input [7:0] data2,
    input wire select,
    output [7:0] dataOut
    );
    wire not_select;
    not_gate notGate(select, not_select); 
    
    three_state_buffer O1(data1, not_select, dataOut);
    three_state_buffer O2(data2, select, dataOut);
endmodule
