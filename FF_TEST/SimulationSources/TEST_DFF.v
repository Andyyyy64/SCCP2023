module TEST_DFF ();
    reg CLK, RST, D;
    wire Q_ASR, Q_SR;
    parameter CYCLE = 5; // constant for clk cycle

    DFFASR D0(.CLK(CLK), .RST(RST), .D(D), .Q(Q_ASR)); // make instance of DFFASR
    DFFSR D1(.CLK(CLK), .RST(RST), .D(D), .Q(Q_SR)); // make instance of DFFSR
    always #(CYCLE/2) begin
        CLK <= ~CLK; // change clk
    end

    initial begin
        #0
            CLK <= 0; // initialize clk
            RST <= 0; // initialize rst
            D <= 0; // initialize d
        #(CYCLE*1.5)
            RST <= 0;
        #(CYCLE*2)
            RST <= 1; // reset is active
        #(CYCLE*3)
            D <= 1;
        #(CYCLE)
            D <= 0;
        #(CYCLE*3)
            $stop;
    end
endmodule