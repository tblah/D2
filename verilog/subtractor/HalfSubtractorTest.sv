// test suite for HalfSubtractor
// brute all possibilities 

// need this or it complains
`timescale 1 ns / 1 ps

module HalfSubtractorTest;
    logic x;
    logic y;
    logic borrowOut;
    logic xy;

    HalfSubtractor DUT( .x(x), .y(y), .borrowOut(borrowOut), .xy(xy) );

    initial
    begin
        for (logic [1:0]i = 0; i != 'b11; i++)
        begin 
            {x,y} = i;
            #5 // so that any delays in the gates have settled down
            
            // check output
            if ( !(xy == (y ^ x)) || !(borrowOut == ( (!x) && y )) )
	    begin
                $printf("HalfSubtractor failed on {x,y} = %i, xy = %i, borrowOut = %i\n", i, xy, borrowOut );
	    end
        end

	$display("No news is good news");
    end
endmodule

