module TB_ENCODER;
//encoder_4to2;

  // Declare testbench variables
  reg A, B, C, D;
  wire Y1, Y0;

  // Instantiate the encoder module
  ENCODER uut (
    .A(A), 
    .B(B), 
    .C(C), 
    .D(D), 
    .Y1(Y1), 
    .Y0(Y0)
  );

  // Testbench procedure
  initial begin
    // Initialize inputs
    A = 0; B = 0; C = 0; D = 0;
    #10; // Wait for 10 time units

    // Apply test vectors
    A = 1; B = 0; C = 0; D = 0; #10;
    A = 0; B = 1; C = 0; D = 0; #10;
    A = 0; B = 0; C = 1; D = 0; #10;
    A = 0; B = 0; C = 0; D = 1; #10;
    A = 1; B = 1; C = 0; D = 0; #10;
    A = 0; B = 1; C = 1; D = 0; #10;
    A = 0; B = 0; C = 1; D = 1; #10;
    A = 1; B = 0; C = 1; D = 0; #10;

    // Finish simulation
    $finish;
  end

  // Monitor signals
  initial begin
    $monitor("Time = %0d : A = %b, B = %b, C = %b, D = %b -> Y1 = %b, Y0 = %b", $time, A, B, C, D, Y1, Y0);
  end

endmodule

