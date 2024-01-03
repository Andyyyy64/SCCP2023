module DIVIDER (
    CLKI, RST, CLKO
);
    input CLKI, RST;
    output wire CLKO;

    reg [26:0] count;
    reg CLKO;

    always @(posedge CLKI or posedge RST) begin
        if(RST) begin
            count <= 27'b0;
            CLKO <= 1'b0;
        end
        else if(count == 27'd99999999) begin
            count <= 27'b0;
            CLKO <= ~CLKO;
        end
        else begin
            count <= count + 27'd1;
            CLKO <= CLKO;
        end
    end
endmodule