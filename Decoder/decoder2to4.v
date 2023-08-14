`timescale 1ns / 1ps

module decoder2to4(
    input wire [1:0] i1,
    output reg [3:0] o1
    );
    
    always @(*) 
    begin
        case(i1)
            2'd0: o1 <= 4'b0001;
            2'd1: o1 <= 4'b0010;
            2'd2: o1 <= 4'b0100;
            2'd3: o1 <= 4'b1000;
 
        endcase
    end
endmodule
