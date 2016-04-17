// test suite for FullSubtractor
// brute all possibilities 

// need this or it complains
`timescale 1 ns / 1 ps

module FullSubtractorTest;
    logic x;
    logic y;
    logic borrowOut;
    logic borrowIn;
    logic xy;

    FullSubtractor DUT( .borrowIn(borrowIn), .x(x), .y(y), .borrowOut(borrowOut), .xy(xy) );

    initial
    begin
        for (logic [2:0]i = 0; i != 'b111; i++)
        begin 
            {x, y, borrowIn} = i;
            #5 // so that any delays in the gates have settled down
            
            // check output
            if ( !(xy == (y ^ x ^ borrowIn)) || !(borrowOut == ( ( (!x) && (y^borrowIn) ) | y && borrowIn )) )
	    begin
                $printf("HalfSubtractor failed on {x,y,borrowIn} = %i, xy = %i, borrowOut = %i\n", i, xy, borrowOut );
	    end
        end

	$display("No news is good news");
    end
endmodule

