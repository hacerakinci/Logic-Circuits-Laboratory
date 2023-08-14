`timescale 1ns / 1ps

module memory_line_test();
    reg [7:0] data1;
    reg select;
    reg rE;
    reg wE;
    reg clock;
    reg reset;
    wire [7:0] dataOut;
    
    memory_line uut(data1,select, rE, wE, clock, reset, dataOut);
    
    initial begin
        clock = 0; reset = 0;
        data1 = 8'd1; select = 1; rE = 1; wE = 1; #125;
        data1 = 8'd2; select = 1; rE = 1; wE = 0; #125;
        data1 = 8'd3; select = 1; rE = 1; wE = 1; #125;
        data1 = 8'd4; select = 1; rE = 1; wE = 0; #125;
        
        data1 = 8'd5; select = 1; rE = 1; wE = 1; #125;
        data1 = 8'd6; select = 1; rE = 1; wE = 0; #125;
        data1 = 8'd7; select = 0; rE = 0; wE = 1; #125;
        data1 = 8'd8; select = 0; rE = 1; wE = 0; #125;
                
    end
    
    always begin
        clock <= ~clock; #50;
    end
    
    always begin
        reset <= ~reset; #200;
    end
    
 
endmodule
