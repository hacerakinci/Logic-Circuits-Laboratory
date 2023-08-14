`timescale 1ns / 1ps

module or_gate(
    input  A,
    input  B,
    output C
    );
    
    assign C = A | B;
endmodule
