module LOGIC (
    A,
    B,
    Y0,
    Y1,
    Y2,
    Y3,        
);
    input A, B;
    output Y0, Y1, Y2, Y3;

    assign Y0 = ~A;
    assign Y1 = ~B;
    assign Y2 = A & B;
    assign Y3 = A | B;

endmodule