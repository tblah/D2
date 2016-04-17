// Verilog implementation of the sequencer
// Yes we are designing this twice. Yay.
//

module SequenceRecogniser( input logic clock,
    input logic nReset,
    input logic dataIn,
    output logic matchAll );

    enum { start, s1, s10, s101, s1011, s10110, s101101, s1011011, s10110110 }
    currentState, nextState;

    // flipflops
    always_ff @( posedge clock, negedge nReset )
    begin
        if ( ~nReset )
            currentState <= start;
        else
            currentState <= nextState;
    end

    // combinational logic
    always_comb
        begin
            unique if ( nextState == s10110110 )
                matchAll = 1;
            else
                matchAll = 0;

            unique case (currentState)
                start: begin
                    if ( dataIn )
                        nextState = s1;
                    else
                        nextState = start;
                end

                s1: begin
                    if ( dataIn )
                        nextState = s1;
                    else
                        nextState = s10;
                end

                s10: begin
                    if ( dataIn )
                        nextState = s101;
                    else
                        nextState = start;
                end

                s101: begin
                    if ( dataIn )
                        nextState = s1011;
                    else
                        nextState = s10;
                end

                s1011: begin
                    if ( dataIn )
                        nextState = s1;
                    else
                        nextState = s10110;
                end

                s10110: begin
                    if ( dataIn )
                        nextState = s101101;
                    else
                        nextState = start;
                end

                s101101: begin
                    if ( dataIn )
                        nextState = s1011011;
                    else
                        nextState = s10;
                end

                s1011011: begin
                    if ( dataIn )
                        nextState = s1;
                    else
                        nextState = s10110110;
                end

                s10110110: begin
                    if ( dataIn )
                        nextState = s101101;
                    else
                        nextState = start;
                end
            endcase
        end
    
endmodule
