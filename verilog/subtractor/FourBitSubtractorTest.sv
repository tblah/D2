// test suite for FourBitSubtractor
// brute all possibilities 

// need this or it complains
`timescale 1 ns / 1 ps

module FourBitSubtractorTest;
    logic[3:0] x;
    logic[3:0] y;
    logic borrowOut;
    logic borrowIn;
    logic[3:0] xy;

    FourBitSubtractor DUT( .borrowIn(borrowIn), .x(x), .y(y), .borrowOut(borrowOut), .xy(xy) );

    initial
    begin
        for (logic [9:0]i = 0; i != 'b1111_1111_1; i++)
        begin 
            {x, y, borrowIn} = i;
            #5 // so that any delays in the gates have settled down
            
            // check output
            if ( {borrowOut, xy} == (x - y - borrowIn) )
	    begin
                $printf("FourBitSubtractor failed on {x,y,borrowIn} = %i, xy = %i, borrowOut = %i\n", i, xy, borrowOut );
	    end
        end

	$display("No news is good news");
    end
endmodule

