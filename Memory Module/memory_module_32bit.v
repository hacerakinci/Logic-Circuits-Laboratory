`timescale 1ns / 1ps

module memory_module_32bit(
    input wire [7:0] data,
    input wire [4:0] address,
    input wire reset,
    input wire rE,
    input wire wE,
    input wire clock,
    output [7:0] dataOut
    );
    wire [3:0] chip_select;
    decoder2to4 decode1(address[4:3], chip_select);
    
    
    memory_module c0(data, address[2:0], chip_select[0], reset, rE, wE, clock, dataOut);
    memory_module c1(data, address[2:0], chip_select[1], reset, rE, wE, clock, dataOut);
    memory_module c2(data, address[2:0], chip_select[2], reset, rE, wE, clock, dataOut);
    memory_module c3(data, address[2:0], chip_select[3], reset, rE, wE, clock, dataOut);
    
endmodule
