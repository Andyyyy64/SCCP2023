module TEST_LOGIC();
    reg A_T, B_T;
    wire Y0_T, Y1_T, Y2_T, Y3_T;

    LOGIC LOGIC_T(.A(A_T), .B(B_T), .Y0(Y0_T), .Y1(Y1_T), .Y2(Y2_T), .Y3(Y3_T));

    initial begin
        #0;
        A_T = 0;
        B_T = 0;
        #50;
        A_T = 0;
        B_T = 1;
        #50;
        A_T = 1;
        B_T = 0;
        #50;
        A_T = 1;
        B_T = 1;
        #50;
         $stop;
    end

endmodule