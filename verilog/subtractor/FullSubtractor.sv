// a full 1 bit subtractor
// performs {borrowOut, xy} = x - y - borrowIn
//

module FullSubtractor( input logic borrowIn,
    input logic y,
    input logic x,
    output logic xy,
    output logic borrowOut );

    // local nets
    logic xMinusY;
    logic xCarryY;
    logic secondSubBorrowOut;
    
    HalfSubtractor xSubY( .x(x), .y(y), .xy(xMinusY), .borrowOut(xCarryY) );
    HalfSubtractor carrySub( .x(borrowIn), .y(xMinusY), .xy(xy), .borrowOut(secondSubCarryOut) );
    XOR21_H borrowXOR( .A(xCarryY), .B(secongSubBorrowOut), .Q(borrowOUt) );

endmodule
    


