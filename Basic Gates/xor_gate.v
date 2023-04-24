module xor_gate(
    input  A,
    input  B,
    output C
    );

    wire nA;
    wire nB;
    wire Ab;
    wire aB;

    not_gate N1(.A(A), .B(nA));
    not_gate N2(.A(B), .B(nB));

    and_gate AND1(.A(A),  .B(nB), .C(Ab));
    and_gate AND2(.A(nA), .B(B),  .C(aB));

    or_gate OR1(.A(Ab), .B(aB), .C(C));
endmodule