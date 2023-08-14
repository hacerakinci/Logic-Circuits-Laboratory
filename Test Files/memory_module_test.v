`timescale 1ns / 1ps

module memory_module_test();
    reg [7:0] data;
    reg [2:0] address;
    reg chip_select;
    reg reset;
    reg rE;
    reg wE;
    reg clock;
    wire [7:0] dataOut;
    
    memory_module uut(data, address, chip_select, reset, rE, wE, clock, dataOut);
    
    initial begin
        data = 8'd1; address = 3'd0; chip_select = 1; rE = 0; wE = 1; reset = 0; clock = 0; #125; 
        data = 8'd2; address = 3'd1; chip_select = 1; rE = 1; wE = 0; #125;
        data = 8'd3; address = 3'd2; chip_select = 0; rE = 1; wE = 0; #125;
        data = 8'd4; address = 3'd3; chip_select = 0; rE = 0; wE = 1; #125;
        data = 8'd5; address = 3'd4; chip_select = 1; rE = 1; wE = 0; #125;
        data = 8'd6; address = 3'd5; chip_select = 1; rE = 1; wE = 1; #125;
        data = 8'd7; address = 3'd6; chip_select = 1; rE = 1; wE = 0; #125;
        data = 8'd8; address = 3'd7; chip_select = 1; rE = 1; wE = 1; #125;
    end
    
    always begin
        clock <= ~clock; #50;
    end
    
    always begin
        reset <= ~reset; #100;
    end
endmodule
