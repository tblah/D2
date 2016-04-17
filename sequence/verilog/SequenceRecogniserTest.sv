// test for the sequence recogniser

module SequenceRecogniserTest;

logic clock;
logic nReset;
logic dataIn;
logic matchAll;

SequenceRecogniser DUT(.clock(clock), .nReset(nReset), .dataIn(dataIn),
.matchAll(matchAll) );

task sendBit( input logic b );
    #1 clock = 0;
    dataIn = b;
    #1 clock = 1;
endtask

task send7Bits( input logic [6:0] bits );
    for (int i = 0; i < 7; i = i+1)
        sendBit( bits[i] );

    #1;
endtask

initial
begin
    nReset = 0;
    #1 clock = 0;

    // test correct sequence
    nReset = 1;
    dataIn = 1;
    #1 clock = 1;
    send7Bits( 'b0110110 );

    if ( matchAll )
        $display( "We have matched just the correct sequence" );
    else
        $display( "Error matching just the correct sequence" );

    // now give it a load of incorrect data
    
    send7Bits( 'b1111111 );

    if ( matchAll )
        $display( "For some reason we are matching just 1s" );
    else
        $display( "correctly refusing to match some junk" );

    // can we go back to a match again?
    send7Bits( 'b0110110 );

    if ( matchAll )
        $display( "We can match the correct sequence a second time" );
    else
        $display( "Failed to mach correctly the second time" );

    // now try the seq+110 subsequence
    sendBit( 1 );
    sendBit( 1 );
    sendBit( 0 );
    #1;

    if ( matchAll )
        $display( "We can match the correct sequence with smallest subsequence" );
    else
        $display( "Failed to mach first subsequence correctly" );



end

endmodule
