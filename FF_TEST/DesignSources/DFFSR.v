module DFFSR (
    CLK, RST, D, Q
); // SR: Synchronous Reset
    input CLK; // Clock input
    input RST; // Reset input
    input D; // Data input
    output Q; // Data output
    reg Q; // shows that Q is a reg(register) type

    always @(posedge CLK) begin // posedge: positive edge
        if(!RST) begin // when rst is 0, !rst is 1, so q should be 0
            Q <= 0;
        end
        else begin // when rst is not active && clk is active, q should be d
            Q <= D;
        end
    end
endmodule