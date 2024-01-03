module DFFASR (
    CLK, RST, D, Q
); // ASR: Asynchronous Reset
    input CLK; // clock input
    input RST; // reset input
    input D; // data input
    output Q; // data output
    reg Q; // shows that Q is a reg(register) type

    always @(posedge CLK or negedge RST) begin // either clk is active or rst is not active
        if(!RST) begin
            Q <= 0;
        end
        else begin
            Q <= D;
        end
    end
endmodule