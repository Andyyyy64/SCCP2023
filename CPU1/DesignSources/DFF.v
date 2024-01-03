module DFF (
    CLK, RST, D, Q
);
    input wire CLK;
    input wire RST;
    input wire D;
    output Q;
    reg Q;
    
    always @(posedge CLK) begin
        if(RST) begin
            Q <= 0; // reset
        end
        else if (D) begin
            Q <= ~Q; // toggle
        end
    end
endmodule