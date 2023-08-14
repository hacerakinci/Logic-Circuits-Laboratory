`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 02:17:09 PM
// Design Name: 
// Module Name: data_bus_2to2_8bit
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


module data_bus_2to2_8bit(
    input wire [7:0] data1,
    input wire [7:0] data2,
    input wire select,
    output wire [7:0] dataOut1,
    output wire [7:0] dataOut2
    );
    
    wire[7:0] dataOut0;
    wire not_select;
    not_gate notGate(select, not_select);
    
    data_bus_2to1_8bit firstBus(data1,data2,select,dataOut0);
    three_state_buffer I1(dataOut0, not_select, dataOut1);
    three_state_buffer I2(dataOut0, select, dataOut2);
    
endmodule
