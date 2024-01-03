module LOGIC_TOP(SW0, SW1, SW2, SW3, LD0);
    input SW0, SW1, SW2, SW3;
    output LD0;

    wire Y0, Y1, Y2, Y3;

    LOGIC I0(.A(SW0), .B(SW1), .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3));
    MUX4 I1(.Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3), .S2(SW2), .S3(SW3), .OUT(LD0));

endmodule