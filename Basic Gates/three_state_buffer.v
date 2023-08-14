`timescale 1ns / 1ps

module three_state_buffer( 
    input  [7:0] A,
    input  E,
    output [7:0] B
    );
    
    assign B = (E == 1)? A[7:0]:8'bZ; 
    
endmodule
