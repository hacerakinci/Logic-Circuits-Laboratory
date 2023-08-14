`timescale 1ns / 1ps

module memory_line(
    input wire [7:0] data1,
    input wire select,
    input wire rE,
    input wire wE,
    input wire clock,  
    input wire reset,            
    output wire [7:0] dataOut
    );
    reg[7:0] dataStored;
    
    initial begin 
        dataStored = 8'dZ;
    end
       
    always @(negedge reset)
    begin
        dataStored[7:0] = 8'b0;
    end
    
    always @(posedge clock)
    begin
        if(wE == 1 && select == 1) begin
            dataStored = data1;
        end
    end
    
    assign dataOut = (rE == 1 && select == 1)? dataStored: 8'dZ;

endmodule
