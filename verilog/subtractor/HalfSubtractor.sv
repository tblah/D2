// half subtractor
// xy = x xor y
// borrowOut = not_x and y

module HalfSubtractor( input logic x,
    input logic y,
    output logic xy,
    output logic borrowOut );

    // local nets
    logic not_x;
    logic not_borrowOut;

    // from d2lib.v
    XOR21_H xyXOR( .A(x), .B(y), .Q(xy) );
    INV1_H xInvertor( .A(x), .Q(not_x) );
    NAND21_H borrowOutNAND( .A(not_x), .B(y), .Q(not_borrowOut) );
    INV1_H borrowOutInv( .A(not_borrowOut), .Q(borrowOut) );

    endmodule


