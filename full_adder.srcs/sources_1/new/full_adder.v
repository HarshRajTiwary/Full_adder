`timescale 1ns / 1ps

module adder_16bit(
input a, b, c_in,
output s, c_out
    );
    wire w1, w2, w3;
    xor(w1, a, b);
    xor(s, w1, c_in);
    and(w2, c_in, w1);
    and(w3, a, b);
    or(c_out, w2, w3);
endmodule
