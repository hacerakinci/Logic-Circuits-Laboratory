`timescale 1ns / 1ps

module memory_module_128bit(
    input wire [31:0] data,
    input wire [4:0] address,
    input wire reset,
    input wire rE,
    input wire wE,
    input wire clock,
    output [31:0] dataOut
    );
    wire [3:0] chip_select;
    decoder2to4 decode1(address[4:3], chip_select);

    
    memory_module_32bit c0(data[31:24], address, reset, rE, wE, clock, dataOut[31:24]);
    memory_module_32bit c1(data[23:16], address, reset, rE, wE, clock, dataOut[23:16]);
    memory_module_32bit c2(data[15:8], address, reset, rE, wE, clock, dataOut[15:8]);
    memory_module_32bit c3(data[7:0], address, reset, rE, wE, clock, dataOut[7:0]);
  
    
endmodule
