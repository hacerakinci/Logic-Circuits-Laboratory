`timescale 1ns / 1ps

module nand_gate(
    input i_0,
    input i_1,
    output o_0
    );
    
    assign o_0 = ~(i_0 & i_1);    

endmodule
