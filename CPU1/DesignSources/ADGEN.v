module ADGEN (
    CLK, RST, ADR
);
    input CLK, RST;
    output wire ADR;
    
    always @(posedge CLK or posedge RST) begin
        if(RST) begin
            ADR <= 0;
        end
        else begin
            ADR <= ~ADR;
        end
    end
    
endmodule