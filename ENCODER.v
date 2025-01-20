module ENCODER (
  input wire A,
  input wire B,
  input wire C,
  input wire D,
  output wire Y1,
  output wire Y0
);

  assign Y1 = C | D;
  assign Y0 = D | B;

endmodule
//A1 = Y3 + Y2
//A0 = Y3 + Y1