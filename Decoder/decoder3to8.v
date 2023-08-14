`timescale 1ns / 1ps

module decoder3to8(
    input wire [2:0] i1,
    output reg [7:0] o1
    );

    always @(*) 
    begin
        case(i1)
            3'd0: o1 <= 8'b00000001;
            3'd1: o1 <= 8'b00000010;
            3'd2: o1 <= 8'b00000100;
            3'd3: o1 <= 8'b00001000;
            3'd4: o1 <= 8'b00010000;
            3'd5: o1 <= 8'b00100000;
            3'd6: o1 <= 8'b01000000;
            3'd7: o1 <= 8'b10000000;
        endcase
    end
    
endmodule
