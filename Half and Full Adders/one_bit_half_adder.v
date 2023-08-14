`timescale 1ns / 1ps

module one_bit_half_adder(
    input i0,
    input i1,
    output carry,
    output sum);
   
    and_gate AND1(.A(i0),.B(i1),.C(carry));
    xor_gate XOR1(.A(i0), .B(i1),.C(sum));

endmodule
