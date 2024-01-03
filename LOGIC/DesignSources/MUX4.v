module MUX4 (
    Y0,
    Y1,
    Y2,
    Y3,
    S2,
    S3,
    OUT
);
    input Y0, Y1, Y2, Y3;
    input S2, S3;
    output OUT;
    
    assign OUT = (~S2 & ~S3) ? Y0 :
                 (~S2 & S2) ? Y1 :
                 (S2 & ~S3) ? Y2 : Y3;
    
endmodule