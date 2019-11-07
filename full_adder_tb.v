`timescale 1 ns / 1 ps

module full_adder_tb;
  reg  A, B, X;
  wire S, C;

  full_adder i1 (
    .A(A), .B(B), .X(X),
    .S(S), .C(C)
  );

  initial begin
    #0 A = 0; B = 0; X = 0;
    #1 A = 1; B = 0; X = 0;
    #1 A = 0; B = 1; X = 0;
    #1 A = 1; B = 1; X = 0;
    #1 A = 0; B = 0; X = 1;
    #1 A = 1; B = 0; X = 1;
    #1 A = 0; B = 1; X = 1;
    #1 A = 1; B = 1; X = 1;
    #1 $stop;
  end
endmodule
