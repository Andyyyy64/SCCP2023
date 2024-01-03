module CPU1 (
    CLK, SW0, SW1, BTNC, LD0
);

    input wire CLK;
    input wire SW0, SW1, BTNC;
    output LD0;

    wire divided_clk; // clock witch is divided by divider
    wire adr; // address from address generator
    wire rom_out; // data from ROM(switch)

    DIVIDER divider(.CLK(CLK), .RST(BTNC), CLKO(divided_clk));

    ADGEN adgen(.CLK(divided_clk), .RST(BTNC), .ADR(adr));

    rom_address = SW1 ? 1 : SW0 ? 0;

    DFF execute(.CLK(divided_clk), .RST(BTNC), .D(rom_out), .Q(LD0));

endmodule