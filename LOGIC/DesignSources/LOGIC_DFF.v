module LOGIC_DFF (
    CLK, SW0, SW1, SW2, SW3, BTN0, BTN1, BTN2, Q
);
    input CLK;
    input SW0, SW1, SW2, SW3; // switches
    input BTN0, BTN1, BTN2; // buttons
    output Q; // output

    wire LD0;

    LOGIC_TOP I0(.SW0(SW0), .SW1(SW1), .SW2(SW2), .SW3(SW3), .LD0(LD0));
    DFF I1(.CLK(CLK), .BTN0(BTN0), .BTN1(BTN1), .BTN2(BTN2), .D(LD0), .Q(Q));
    
endmodule