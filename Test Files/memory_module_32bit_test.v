`timescale 1ns / 1ps

module memory_module_32bit_test();
    reg [7:0] data;
    reg [5:0] address;
    reg reset;
    reg rE;
    reg wE;
    reg clock;
    wire [7:0] dataOut;
    
    memory_module_32bit uut(data, address, reset, rE, wE, clock, dataOut);
    
        initial begin
        data = 8'd1; address = 5'd0; rE = 0; wE = 1; reset = 0; clock = 0; #125; 
        data = 8'd2; address = 5'd1; rE = 1; wE = 0; #125;
        data = 8'd3; address = 5'd2; rE = 1; wE = 0; #125;
        data = 8'd4; address = 5'd3; rE = 0; wE = 1; #125;
        data = 8'd5; address = 5'd4; rE = 1; wE = 0; #125;
        data = 8'd6; address = 5'd5; rE = 1; wE = 1; #125;
        data = 8'd7; address = 5'd6; rE = 1; wE = 0; #125;
        data = 8'd8; address = 5'd7; rE = 1; wE = 1; #125;
    end
    
    always begin
        clock <= ~clock; #50;
    end
    
    always begin
        reset <= ~reset; #100;
    end
endmodule
