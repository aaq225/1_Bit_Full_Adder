`timescale 1ns / 1ps

module one_bit_full_adder(
    input A,
    input B,
    input Cin,
    output Cout,
    output Sum
    );
    
    assign Sum = A ^ B ^ Cin;
    assign Cout = (Cin & B) | (A & B) | (A & Cin);
    
endmodule
