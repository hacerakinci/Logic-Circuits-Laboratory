`timescale 1ns / 1ps

module memory_module(
    input wire [7:0] data,
    input wire [2:0] address,
    input wire chip_select,
    input wire reset,
    input wire rE,
    input wire wE,
    input wire clock,
    output [7:0] dataOut
    );
    
    wire [7:0] line_select;
    decoder3to8 decode(address, line_select);
    
    wire [7:0] mem1, mem2, mem3, mem4, mem5, mem6, mem7, mem8;
    
    memory_line m1(data, chip_select, rE, wE, clock, reset, mem1);
    memory_line m2(data, chip_select, rE, wE, clock, reset, mem2);
    memory_line m3(data, chip_select, rE, wE, clock, reset, mem3);
    memory_line m4(data, chip_select, rE, wE, clock, reset, mem4);
    memory_line m5(data, chip_select, rE, wE, clock, reset, mem5);
    memory_line m6(data, chip_select, rE, wE, clock, reset, mem6);
    memory_line m7(data, chip_select, rE, wE, clock, reset, mem7);
    memory_line m8(data, chip_select, rE, wE, clock, reset, mem8);
    
    three_state_buffer o1(mem1, line_select[0], dataOut);
    three_state_buffer o2(mem2, line_select[1], dataOut);
    three_state_buffer o3(mem3, line_select[2], dataOut);
    three_state_buffer o4(mem4, line_select[3], dataOut);
    three_state_buffer o5(mem5, line_select[4], dataOut);
    three_state_buffer o6(mem6, line_select[5], dataOut);
    three_state_buffer o7(mem7, line_select[6], dataOut);
    three_state_buffer o8(mem8, line_select[7], dataOut);
    
endmodule
