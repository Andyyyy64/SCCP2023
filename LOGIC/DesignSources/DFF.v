module DFF (
    CLK, BTN0, BTN1, BTN2, D, Q
);
    input CLK;
    input BTN0, BTN1, BTN2;
    input D; // LD0 in mux4
    output Q;
    reg Q;
    
    always @(posedge CLK) begin
        if(BTN0) begin
            Q <= 0; // reset
        end
        else if(BTN1) begin
            Q <= 1; // set
        end
        else if(BTN2) begin
            Q <= D; // save data input
        end
        else begin
            Q <= Q; // hold the value
        end
    end
endmodule