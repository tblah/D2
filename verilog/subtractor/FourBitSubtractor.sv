// the 4 bit subtractor as it will be included on the chip
// performs {borrowOut, xy} = x - y - borrowIn
//

module FourBitSubtractor( input logic borrowIn,
    input logic[3:0] x,
    input logic[3:0] y,
    output logic[3:0] xy,
    output logic borrowOut );

    // local nets
    logic borrow0;
    logic borrow1;
    logic borrow2;

    // FullSubtractors
    FullSubtractor sub0( .borrowIn(borrowIn), .x(x[0]), .y(y[0]), .xy(xy[0]),
    .borrowOut(borrow0) );
    
    FullSubtractor sub1( .borrowIn(borrow0), .x(x[1]), .y(y[1]), .xy(xy[1]),
    .borrowOut(borrow1) );
    
    FullSubtractor sub2( .borrowIn(borrow1), .x(x[2]), .y(y[2]), .xy(xy[2]),
    .borrowOut(borrow2) );
    
    FullSubtractor sub3( .borrowIn(borrow2), .x(x[3]), .y(y[3]), .xy(xy[3]),
    .borrowOut(borrowOut) );

    endmodule
