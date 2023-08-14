`timescale 1ns / 1ps

module three_state_buffer_test();
    reg [7:0] A;
    reg E;
    wire [7:0] B;
    
    three_state_buffer uut(A, E, B);
    
    initial begin
        A = 8'b1; E = 0; #500;
        A = 8'b1; E = 1; #500;                   
    end
endmodule
