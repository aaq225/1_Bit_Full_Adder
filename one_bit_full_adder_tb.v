`timescale 1ns / 1ps


module one_bit_full_adder_tb(
    );
    
    reg A,B,Cin;
    wire Cout, Sum;
    
    one_bit_full_adder utt(.A(A),.B(B),.Cin(Cin),.Cout(Cout),.Sum(Sum));
    
    initial
        begin
            A = 0; B = 0; Cin = 0;
            #10 Cin = 1;
            #10 Cin = 0; B = 1;
            #10 Cin = 1;
            #10 Cin = 0; B = 0; A = 1;
            #10 Cin = 1;
            #10 Cin = 0; B = 1;
            #10 Cin = 1;
        end
endmodule
