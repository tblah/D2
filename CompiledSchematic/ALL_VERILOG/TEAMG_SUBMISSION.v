`timescale 1ns/1ps

module alias_vector (a, a);
parameter size = 1;
inout [size-1:0] a;
endmodule

module alias_bit (a, a);
inout a;
endmodule


module glbl;
	wire VDD;
	wire GND;
	wire \0 ;

endmodule

module TEAMG_HALFSUBTRACTOR ( Y, X, XY, BORROWOUT);
input Y;
input X;
output XY;
output BORROWOUT;


//    SIGNALS

wire N00168;
wire N00196;

// GATE INSTANCES


XOR21_H U1( 
	.A( Y ) , 
	.B( X ) , 
	.Q( XY ) 
 ) ;

INV1_H U2( 
	.A( X ) , 
	.Q( N00168 ) 
 ) ;

INV1_H U3( 
	.A( N00196 ) , 
	.Q( BORROWOUT ) 
 ) ;

NAND21_H U4( 
	.A( N00168 ) , 
	.B( Y ) , 
	.Q( N00196 ) 
 ) ;

endmodule


module TEAMG_FULLSUBTRACTOR ( CARRYIN, X, Y, XY, BORROWOUT);
input CARRYIN;
input X;
input Y;
output XY;
output BORROWOUT;


//    SIGNALS

wire N00130;
wire N00142;
wire N00209;

// GATE INSTANCES


XOR21_H U1( 
	.A( N00209 ) , 
	.B( N00142 ) , 
	.Q( BORROWOUT ) 
 ) ;

TEAMG_HALFSUBTRACTOR TEAMG_HALFSUBTRACTOR0 ( 
	.Y( Y ) , 
	.X( X ) , 
	.XY( N00130 ) , 
	.BORROWOUT( N00142 ) 
 ) ;

TEAMG_HALFSUBTRACTOR TEAMG_HALFSUBTRACTOR1 ( 
	.Y( CARRYIN ) , 
	.X( N00130 ) , 
	.XY( XY ) , 
	.BORROWOUT( N00209 ) 
 ) ;

endmodule


module TEAMG_4BIT_SUBTRACTOR ( BORROWIN, X0, Y0, X1, X2, X3,
Y1, Y2, Y3, XY0, XY1, XY2, XY3, BORROWOUT);
input BORROWIN;
input X0;
input Y0;
input X1;
input X2;
input X3;
input Y1;
input Y2;
input Y3;
output XY0;
output XY1;
output XY2;
output XY3;
output BORROWOUT;


//    SIGNALS

wire N00135;
wire N00160;
wire N00185;

// GATE INSTANCES


TEAMG_FULLSUBTRACTOR FULL_SUBTRACTOR1 ( 
	.CARRYIN( N00160 ) , 
	.X( X2 ) , 
	.Y( Y2 ) , 
	.XY( XY2 ) , 
	.BORROWOUT( N00185 ) 
 ) ;

TEAMG_FULLSUBTRACTOR FULL_SUBTRACTOR ( 
	.CARRYIN( BORROWIN ) , 
	.X( X0 ) , 
	.Y( Y0 ) , 
	.XY( XY0 ) , 
	.BORROWOUT( N00135 ) 
 ) ;

TEAMG_FULLSUBTRACTOR FULL_SUBTRACTOR2 ( 
	.CARRYIN( N00135 ) , 
	.X( X1 ) , 
	.Y( Y1 ) , 
	.XY( XY1 ) , 
	.BORROWOUT( N00160 ) 
 ) ;

TEAMG_FULLSUBTRACTOR FULL_SUBTRACTOR3 ( 
	.CARRYIN( N00185 ) , 
	.X( X3 ) , 
	.Y( Y3 ) , 
	.XY( XY3 ) , 
	.BORROWOUT( BORROWOUT ) 
 ) ;

endmodule


module TEAMG_RINGOSCILLATOR ( ENABLE, OUTPUT, NRESET);
input ENABLE;
output OUTPUT;
input NRESET;


//    SIGNALS

wire N02408;
wire N03216;
wire N05041;
wire N05382;
wire N05386;
wire N05390;
wire N05399;
wire N05411;
wire N05522;
wire N05534;
wire N05720;
wire N05728;
wire N05791;
wire N05799;
wire N05862;
wire N05870;
wire N05933;
wire N05941;
wire N05970;
wire N06821;
wire N10078;
wire N10401;
wire N111170;
wire N114650;

// GATE INSTANCES

wire OUTPUT;
alias_bit alias_bit1 (\OUTPUT , OUTPUT);

INV1_H U48( 
	.A( N114650 ) , 
	.Q( N10401 ) 
 ) ;

INV1_H U49( 
	.A( N10401 ) , 
	.Q( N10078 ) 
 ) ;

INV1_H U50( 
	.A( N10078 ) , 
	.Q( N111170 ) 
 ) ;

INV1_H U51( 
	.A( N111170 ) , 
	.Q( N03216 ) 
 ) ;

DFC1_H U9( 
	.C( N05399 ) , 
	.D( N02408 ) , 
	.Q( N05522 ) , 
	.QN( N02408 ) , 
	.RN( NRESET ) 
 ) ;

INV1_H U28( 
	.A( N05382 ) , 
	.Q( N05386 ) 
 ) ;

INV1_H U29( 
	.A( N05386 ) , 
	.Q( N05390 ) 
 ) ;

INV1_H U30( 
	.A( N05390 ) , 
	.Q( N05041 ) 
 ) ;

INV1_H U31( 
	.A( N05041 ) , 
	.Q( N05399 ) 
 ) ;

INV1_H U32( 
	.A( N05399 ) , 
	.Q( N05411 ) 
 ) ;

INV1_H U33( 
	.A( N05411 ) , 
	.Q( N114650 ) 
 ) ;

DFC1_H U37( 
	.C( N05522 ) , 
	.D( N05534 ) , 
	.Q( N05720 ) , 
	.QN( N05534 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U38( 
	.C( N05720 ) , 
	.D( N05728 ) , 
	.Q( N05791 ) , 
	.QN( N05728 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U39( 
	.C( N05791 ) , 
	.D( N05799 ) , 
	.Q( N05862 ) , 
	.QN( N05799 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U40( 
	.C( N05862 ) , 
	.D( N05870 ) , 
	.Q( N05933 ) , 
	.QN( N05870 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U41( 
	.C( N05933 ) , 
	.D( N05941 ) , 
	.Q( N05970 ) , 
	.QN( N05941 ) , 
	.RN( NRESET ) 
 ) ;

DFC1_H U42( 
	.C( N05970 ) , 
	.D( N06821 ) , 
	.Q( OUTPUT ) , 
	.QN( N06821 ) , 
	.RN( NRESET ) 
 ) ;

NAND21_H U44( 
	.A( ENABLE ) , 
	.B( N03216 ) , 
	.Q( N05382 ) 
 ) ;

endmodule


module TEAMG_Q3_LOGIC ( \D[3] , DATAIN, \-Q[0] , \-Q[1] , \-Q[2] );
output \D[3] ;
input DATAIN;
input \-Q[0] ;
input \-Q[1] ;
input \-Q[2] ;


//    SIGNALS


// GATE INSTANCES


NOR41_H NOR41_H1( 
	.A( DATAIN ) , 
	.B( \-Q[0]  ) , 
	.C( \-Q[1]  ) , 
	.D( \-Q[2]  ) , 
	.Q( \D[3]  ) 
 ) ;

endmodule


module TEAMG_Q0_LOGIC ( \D[0] , DATAIN, \-Q[0] , \-Q[2] , \Q[2] ,
\-Q[1] , \-Q[3] );
output \D[0] ;
input DATAIN;
input \-Q[0] ;
input \-Q[2] ;
input \Q[2] ;
input \-Q[1] ;
input \-Q[3] ;


//    SIGNALS

wire N04232;
wire N04259;
wire N04344;

// GATE INSTANCES


NAND31_H U3( 
	.A( N04232 ) , 
	.B( N04344 ) , 
	.C( N04259 ) , 
	.Q( \D[0]  ) 
 ) ;

NAND31_H U8( 
	.A( DATAIN ) , 
	.B( \-Q[3]  ) , 
	.C( \-Q[0]  ) , 
	.Q( N04232 ) 
 ) ;

NAND41_H U9( 
	.A( \-Q[3]  ) , 
	.B( DATAIN ) , 
	.C( \-Q[1]  ) , 
	.D( \-Q[2]  ) , 
	.Q( N04344 ) 
 ) ;

NAND41_H U10( 
	.A( \-Q[3]  ) , 
	.B( \Q[2]  ) , 
	.C( \-Q[0]  ) , 
	.D( \-Q[1]  ) , 
	.Q( N04259 ) 
 ) ;

endmodule


module TEAMG_Q1_LOGIC ( \D[1] , DATAIN, \-Q[0] , \-Q[1] , \-Q[2] ,
\Q[3] , \Q[0] , \Q[2] , \-Q[3] , \Q[1] , \-DATAIN );
output \D[1] ;
input DATAIN;
input \-Q[0] ;
input \-Q[1] ;
input \-Q[2] ;
input \Q[3] ;
input \Q[0] ;
input \Q[2] ;
input \-Q[3] ;
input \Q[1] ;
input \-DATAIN ;


//    SIGNALS

wire N03921;
wire N03929;
wire N03941;
wire N03949;
wire N04051;
wire N07811;
wire N08478;
wire N08904;
wire N08908;
wire N08912;
wire N090600;

// GATE INSTANCES


NAND41_H U15( 
	.A( \Q[1]  ) , 
	.B( DATAIN ) , 
	.C( \-Q[3]  ) , 
	.D( \-Q[0]  ) , 
	.Q( N03949 ) 
 ) ;

NAND41_H U16( 
	.A( \-DATAIN  ) , 
	.B( \-Q[3]  ) , 
	.C( \-Q[2]  ) , 
	.D( \Q[0]  ) , 
	.Q( N03941 ) 
 ) ;

NAND41_H U17( 
	.A( \-Q[0]  ) , 
	.B( \-Q[3]  ) , 
	.C( \Q[2]  ) , 
	.D( \Q[1]  ) , 
	.Q( N03921 ) 
 ) ;

INV1_H U18( 
	.A( N07811 ) , 
	.Q( N090600 ) 
 ) ;

NAND41_H U5( 
	.A( N03921 ) , 
	.B( N03949 ) , 
	.C( N03941 ) , 
	.D( N03929 ) , 
	.Q( \D[1]  ) 
 ) ;

NAND21_H U20( 
	.A( N090600 ) , 
	.B( DATAIN ) , 
	.Q( N08908 ) 
 ) ;

INV1_H U21( 
	.A( N04051 ) , 
	.Q( N08478 ) 
 ) ;

NAND21_H U23( 
	.A( N08478 ) , 
	.B( DATAIN ) , 
	.Q( N08912 ) 
 ) ;

NAND21_H U24( 
	.A( N08908 ) , 
	.B( N08912 ) , 
	.Q( N08904 ) 
 ) ;

NAND41_H U9( 
	.A( \Q[0]  ) , 
	.B( \-Q[1]  ) , 
	.C( \Q[2]  ) , 
	.D( \-Q[3]  ) , 
	.Q( N07811 ) 
 ) ;

INV1_H U25( 
	.A( N08904 ) , 
	.Q( N03929 ) 
 ) ;

NAND41_H U12( 
	.A( \Q[3]  ) , 
	.B( \-Q[2]  ) , 
	.C( \-Q[1]  ) , 
	.D( \-Q[0]  ) , 
	.Q( N04051 ) 
 ) ;

endmodule


module TEAMG_Q2_LOGIC ( \-DATAIN , \D[2] , \-Q[2] , \-Q[1] ,
\Q[3] , \-Q[0] , DATAIN, \Q[2] , \Q[1] , \Q[0] );
input \-DATAIN ;
output \D[2] ;
input \-Q[2] ;
input \-Q[1] ;
input \Q[3] ;
input \-Q[0] ;
input DATAIN;
input \Q[2] ;
input \Q[1] ;
input \Q[0] ;


//    SIGNALS

wire N04278;
wire N04316;
wire N04619;
wire N04633;
wire N04641;
wire N04667;
wire N07852;
wire N08635;

// GATE INSTANCES


NAND41_H U14( 
	.A( \-Q[2]  ) , 
	.B( \-Q[1]  ) , 
	.C( \Q[3]  ) , 
	.D( \-Q[0]  ) , 
	.Q( N04316 ) 
 ) ;

NOR21_H U15( 
	.A( \-DATAIN  ) , 
	.B( N04316 ) , 
	.Q( N04278 ) 
 ) ;

NAND41_H U20( 
	.A( N07852 ) , 
	.B( N04619 ) , 
	.C( N04633 ) , 
	.D( N04641 ) , 
	.Q( N04667 ) 
 ) ;

NAND41_H U25( 
	.A( DATAIN ) , 
	.B( \Q[2]  ) , 
	.C( \Q[1]  ) , 
	.D( \-Q[0]  ) , 
	.Q( N07852 ) 
 ) ;

NAND41_H U26( 
	.A( \Q[2]  ) , 
	.B( \Q[0]  ) , 
	.C( \-Q[1]  ) , 
	.D( DATAIN ) , 
	.Q( N04619 ) 
 ) ;

NAND41_H U27( 
	.A( \Q[2]  ) , 
	.B( \-Q[1]  ) , 
	.C( \-Q[0]  ) , 
	.D( \-DATAIN  ) , 
	.Q( N04633 ) 
 ) ;

NAND41_H U28( 
	.A( \-Q[2]  ) , 
	.B( \Q[1]  ) , 
	.C( \Q[0]  ) , 
	.D( DATAIN ) , 
	.Q( N04641 ) 
 ) ;

NOR21_H U29( 
	.A( N04278 ) , 
	.B( N04667 ) , 
	.Q( N08635 ) 
 ) ;

INV1_H U30( 
	.A( N08635 ) , 
	.Q( \D[2]  ) 
 ) ;

endmodule


module TEAMG_SEQUENCE_RECOGNITION ( DATAIN, CLK, N_RESET, MATCHALL);
input DATAIN;
input CLK;
input N_RESET;
output MATCHALL;


//    SIGNALS

wire \-Q[0] ;
wire \-Q[1] ;
wire \-Q[2] ;
wire \D[0] ;
wire \D[1] ;
wire \D[2] ;
wire \D[3] ;
wire N04888;
wire N06197;
wire \Q[0] ;
wire \Q[1] ;
wire \Q[2] ;

// GATE INSTANCES


DFC1_H U24( 
	.C( CLK ) , 
	.D( \D[3]  ) , 
	.Q( MATCHALL ) , 
	.QN( N06197 ) , 
	.RN( N_RESET ) 
 ) ;

DFC1_H U25( 
	.C( CLK ) , 
	.D( \D[2]  ) , 
	.Q( \Q[2]  ) , 
	.QN( \-Q[2]  ) , 
	.RN( N_RESET ) 
 ) ;

DFC1_H U26( 
	.C( CLK ) , 
	.D( \D[1]  ) , 
	.Q( \Q[1]  ) , 
	.QN( \-Q[1]  ) , 
	.RN( N_RESET ) 
 ) ;

DFC1_H U27( 
	.C( CLK ) , 
	.D( \D[0]  ) , 
	.Q( \Q[0]  ) , 
	.QN( \-Q[0]  ) , 
	.RN( N_RESET ) 
 ) ;

INV1_H U28( 
	.A( DATAIN ) , 
	.Q( N04888 ) 
 ) ;

TEAMG_Q1_LOGIC Q1_LOGIC ( 
	.\D[1] ( \D[1]  ) , 
	.DATAIN( DATAIN ) , 
	.\-Q[0] ( \-Q[0]  ) , 
	.\-Q[1] ( \-Q[1]  ) , 
	.\-Q[2] ( \-Q[2]  ) , 
	.\Q[3] ( MATCHALL ) , 
	.\Q[0] ( \Q[0]  ) , 
	.\Q[2] ( \Q[2]  ) , 
	.\-Q[3] ( N06197 ) , 
	.\Q[1] ( \Q[1]  ) , 
	.\-DATAIN ( N04888 ) 
 ) ;

TEAMG_Q2_LOGIC Q2_LOGIC ( 
	.\-DATAIN ( N04888 ) , 
	.\D[2] ( \D[2]  ) , 
	.\-Q[2] ( \-Q[2]  ) , 
	.\-Q[1] ( \-Q[1]  ) , 
	.\Q[3] ( MATCHALL ) , 
	.\-Q[0] ( \-Q[0]  ) , 
	.DATAIN( DATAIN ) , 
	.\Q[2] ( \Q[2]  ) , 
	.\Q[1] ( \Q[1]  ) , 
	.\Q[0] ( \Q[0]  ) 
 ) ;

TEAMG_Q3_LOGIC Q3_LOGIC ( 
	.\D[3] ( \D[3]  ) , 
	.DATAIN( DATAIN ) , 
	.\-Q[0] ( \-Q[0]  ) , 
	.\-Q[1] ( \-Q[1]  ) , 
	.\-Q[2] ( \-Q[2]  ) 
 ) ;

TEAMG_Q0_LOGIC Q0_LOGIC ( 
	.\D[0] ( \D[0]  ) , 
	.DATAIN( DATAIN ) , 
	.\-Q[0] ( \-Q[0]  ) , 
	.\-Q[2] ( \-Q[2]  ) , 
	.\Q[2] ( \Q[2]  ) , 
	.\-Q[1] ( \-Q[1]  ) , 
	.\-Q[3] ( N06197 ) 
 ) ;

endmodule


module TEAMG_HALFADDER ( A, B, SUM, CARRY);
input A;
input B;
output SUM;
output CARRY;


//    SIGNALS

wire N00228;

// GATE INSTANCES


INV1_H U2( 
	.A( N00228 ) , 
	.Q( CARRY ) 
 ) ;

XOR21_H U3( 
	.A( A ) , 
	.B( B ) , 
	.Q( SUM ) 
 ) ;

NAND21_H U4( 
	.A( A ) , 
	.B( B ) , 
	.Q( N00228 ) 
 ) ;

endmodule


module TEAMG_SIGNCHANGER8BIT ( FLIP, IN3, IN2, IN1, IN0, OUT2,
OUT1, OUT0, OUT3, IN5, IN6, IN7, IN4, OUT6, OUT7, OUT4, OUT5);
input FLIP;
input IN3;
input IN2;
input IN1;
input IN0;
output OUT2;
output OUT1;
output OUT0;
output OUT3;
input IN5;
input IN6;
input IN7;
input IN4;
output OUT6;
output OUT7;
output OUT4;
output OUT5;


//    SIGNALS

wire N00252;
wire N00256;
wire N00491;
wire N00501;
wire N00505;
wire N00923;
wire N00927;
wire N00931;
wire N00935;
wire N02339;
wire N02343;
wire N02580;
wire N02586;
wire N02592;
wire N02614;
wire N02620;
wire N02636;
wire N02642;
wire N03082;
wire N03086;
wire N03090;
wire N03125;
wire N03135;

// GATE INSTANCES


MUX21_H U13( 
	.A( IN6 ) , 
	.B( N02614 ) , 
	.Q( N02580 ) , 
	.S( FLIP ) 
 ) ;

MUX21_H U14( 
	.A( IN7 ) , 
	.B( N02620 ) , 
	.Q( N03125 ) , 
	.S( FLIP ) 
 ) ;

INV1_H U15( 
	.A( IN7 ) , 
	.Q( N02620 ) 
 ) ;

INV1_H U16( 
	.A( IN4 ) , 
	.Q( N02636 ) 
 ) ;

XOR21_H U17( 
	.A( N03135 ) , 
	.B( N03125 ) , 
	.Q( OUT7 ) 
 ) ;

MUX21_H U1( 
	.A( IN3 ) , 
	.B( N00923 ) , 
	.Q( N02339 ) , 
	.S( FLIP ) 
 ) ;

MUX21_H U2( 
	.A( IN2 ) , 
	.B( N00927 ) , 
	.Q( N00491 ) , 
	.S( FLIP ) 
 ) ;

MUX21_H U3( 
	.A( IN1 ) , 
	.B( N00931 ) , 
	.Q( N00501 ) , 
	.S( FLIP ) 
 ) ;

MUX21_H U4( 
	.A( IN0 ) , 
	.B( N00935 ) , 
	.Q( N00505 ) , 
	.S( FLIP ) 
 ) ;

INV1_H U5( 
	.A( IN3 ) , 
	.Q( N00923 ) 
 ) ;

INV1_H U6( 
	.A( IN2 ) , 
	.Q( N00927 ) 
 ) ;

INV1_H U7( 
	.A( IN1 ) , 
	.Q( N00931 ) 
 ) ;

INV1_H U8( 
	.A( IN0 ) , 
	.Q( N00935 ) 
 ) ;

INV1_H U9( 
	.A( IN5 ) , 
	.Q( N02642 ) 
 ) ;

INV1_H U10( 
	.A( IN6 ) , 
	.Q( N02614 ) 
 ) ;

MUX21_H U11( 
	.A( IN4 ) , 
	.B( N02636 ) , 
	.Q( N02586 ) , 
	.S( FLIP ) 
 ) ;

MUX21_H U12( 
	.A( IN5 ) , 
	.B( N02642 ) , 
	.Q( N02592 ) , 
	.S( FLIP ) 
 ) ;

TEAMG_HALFADDER HALFADDER1 ( 
	.A( N00491 ) , 
	.B( N00256 ) , 
	.SUM( OUT2 ) , 
	.CARRY( N02343 ) 
 ) ;

TEAMG_HALFADDER HALFADDER2 ( 
	.A( N00501 ) , 
	.B( N00252 ) , 
	.SUM( OUT1 ) , 
	.CARRY( N00256 ) 
 ) ;

TEAMG_HALFADDER HALFADDER3 ( 
	.A( N00505 ) , 
	.B( FLIP ) , 
	.SUM( OUT0 ) , 
	.CARRY( N00252 ) 
 ) ;

TEAMG_HALFADDER HALFADDER4 ( 
	.A( N02339 ) , 
	.B( N02343 ) , 
	.SUM( OUT3 ) , 
	.CARRY( N03082 ) 
 ) ;

TEAMG_HALFADDER HALFADDER5 ( 
	.A( N02586 ) , 
	.B( N03082 ) , 
	.SUM( OUT4 ) , 
	.CARRY( N03086 ) 
 ) ;

TEAMG_HALFADDER HALFADDER6 ( 
	.A( N02592 ) , 
	.B( N03086 ) , 
	.SUM( OUT5 ) , 
	.CARRY( N03090 ) 
 ) ;

TEAMG_HALFADDER HALFADDER7 ( 
	.A( N02580 ) , 
	.B( N03090 ) , 
	.SUM( OUT6 ) , 
	.CARRY( N03135 ) 
 ) ;

endmodule


module TEAMG_AND ( A, B, OUT);
input A;
input B;
output OUT;


//    SIGNALS

wire N000542;

// GATE INSTANCES


NAND21_H U1( 
	.A( A ) , 
	.B( B ) , 
	.Q( N000542 ) 
 ) ;

INV1_H U2( 
	.A( N000542 ) , 
	.Q( OUT ) 
 ) ;

endmodule


module TEAMG_SIGNCHANGER4BIT ( FLIP, IN3, IN2, IN1, IN0, OUT2,
OUT1, OUT0, OUT3);
input FLIP;
input IN3;
input IN2;
input IN1;
input IN0;
output OUT2;
output OUT1;
output OUT0;
output OUT3;


//    SIGNALS

wire N00252;
wire N00256;
wire N00491;
wire N00501;
wire N00505;
wire N00923;
wire N00927;
wire N00931;
wire N00935;
wire N01437;
wire N01449;

// GATE INSTANCES


MUX21_H U1( 
	.A( IN3 ) , 
	.B( N00923 ) , 
	.Q( N01449 ) , 
	.S( FLIP ) 
 ) ;

MUX21_H U2( 
	.A( IN2 ) , 
	.B( N00927 ) , 
	.Q( N00491 ) , 
	.S( FLIP ) 
 ) ;

MUX21_H U3( 
	.A( IN1 ) , 
	.B( N00931 ) , 
	.Q( N00501 ) , 
	.S( FLIP ) 
 ) ;

MUX21_H U4( 
	.A( IN0 ) , 
	.B( N00935 ) , 
	.Q( N00505 ) , 
	.S( FLIP ) 
 ) ;

INV1_H U5( 
	.A( IN3 ) , 
	.Q( N00923 ) 
 ) ;

INV1_H U6( 
	.A( IN2 ) , 
	.Q( N00927 ) 
 ) ;

INV1_H U7( 
	.A( IN1 ) , 
	.Q( N00931 ) 
 ) ;

INV1_H U8( 
	.A( IN0 ) , 
	.Q( N00935 ) 
 ) ;

XOR21_H U9( 
	.A( N01437 ) , 
	.B( N01449 ) , 
	.Q( OUT3 ) 
 ) ;

TEAMG_HALFADDER HALFADDER1 ( 
	.A( N00491 ) , 
	.B( N00256 ) , 
	.SUM( OUT2 ) , 
	.CARRY( N01437 ) 
 ) ;

TEAMG_HALFADDER HALFADDER2 ( 
	.A( N00501 ) , 
	.B( N00252 ) , 
	.SUM( OUT1 ) , 
	.CARRY( N00256 ) 
 ) ;

TEAMG_HALFADDER HALFADDER3 ( 
	.A( N00505 ) , 
	.B( FLIP ) , 
	.SUM( OUT0 ) , 
	.CARRY( N00252 ) 
 ) ;

endmodule


module TEAMG_FULLADDER ( A, B, CIN, COUT, SUM);
input A;
input B;
input CIN;
output COUT;
output SUM;


//    SIGNALS

wire N00347;
wire N00847;
wire N00976;
wire N012310;

// GATE INSTANCES


NOR21_H U1( 
	.A( N00847 ) , 
	.B( N00347 ) , 
	.Q( N012310 ) 
 ) ;

INV1_H U2( 
	.A( N012310 ) , 
	.Q( COUT ) 
 ) ;

XOR21_H U3( 
	.A( N00976 ) , 
	.B( CIN ) , 
	.Q( SUM ) 
 ) ;

XOR21_H U4( 
	.A( A ) , 
	.B( B ) , 
	.Q( N00976 ) 
 ) ;

TEAMG_AND AND1 ( 
	.A( A ) , 
	.B( B ) , 
	.OUT( N00847 ) 
 ) ;

TEAMG_AND AND2 ( 
	.A( N00976 ) , 
	.B( CIN ) , 
	.OUT( N00347 ) 
 ) ;

endmodule


module TEAMG_MULTIBLOCK ( X0, X1, X2, X3, Y, IN0, IN1, IN2, IN3,
X0O, X1O, X2O, X3O, CARRYOUT, OUT3, OUT2, OUT1, OUT0);
input X0;
input X1;
input X2;
input X3;
input Y;
input IN0;
input IN1;
input IN2;
input IN3;
output X0O;
output X1O;
output X2O;
output X3O;
output CARRYOUT;
output OUT3;
output OUT2;
output OUT1;
output OUT0;


//    SIGNALS

wire N00083;
wire N00087;
wire N00091;
wire N00319;
wire N00323;
wire N00327;
wire N00331;

// GATE INSTANCES

wire X0;
wire X0O;
alias_bit alias_bit1 (X0O, X0);
wire X1;
wire X1O;
alias_bit alias_bit2 (X1O, X1);
wire X2;
wire X2O;
alias_bit alias_bit3 (X2O, X2);
wire X3;
wire X3O;
alias_bit alias_bit4 (X3O, X3);

TEAMG_HALFADDER HALFADDER0 ( 
	.A( N00319 ) , 
	.B( IN0 ) , 
	.SUM( OUT0 ) , 
	.CARRY( N00091 ) 
 ) ;

TEAMG_AND AND0 ( 
	.A( X0 ) , 
	.B( Y ) , 
	.OUT( N00319 ) 
 ) ;

TEAMG_AND AND1 ( 
	.A( X1 ) , 
	.B( Y ) , 
	.OUT( N00323 ) 
 ) ;

TEAMG_AND AND2 ( 
	.A( X2 ) , 
	.B( Y ) , 
	.OUT( N00327 ) 
 ) ;

TEAMG_FULLADDER FULLADDER0 ( 
	.A( N00323 ) , 
	.B( IN1 ) , 
	.CIN( N00091 ) , 
	.COUT( N00087 ) , 
	.SUM( OUT1 ) 
 ) ;

TEAMG_AND AND3 ( 
	.A( X3 ) , 
	.B( Y ) , 
	.OUT( N00331 ) 
 ) ;

TEAMG_FULLADDER FULLADDER1 ( 
	.A( N00327 ) , 
	.B( IN2 ) , 
	.CIN( N00087 ) , 
	.COUT( N00083 ) , 
	.SUM( OUT2 ) 
 ) ;

TEAMG_FULLADDER FULLADDER2 ( 
	.A( N00331 ) , 
	.B( IN3 ) , 
	.CIN( N00083 ) , 
	.COUT( CARRYOUT ) , 
	.SUM( OUT3 ) 
 ) ;

endmodule


module TEAMG_MULTIPLIER ( Y0, Y1, Y2, Y3, X0, X1, X2, X3, ISSIGNED,
OUT0, OUT1, OUT2, OUT3, OUT4, OUT5, OUT6, OUT7, ISSUPPORTED);
input Y0;
input Y1;
input Y2;
input Y3;
input X0;
input X1;
input X2;
input X3;
input ISSIGNED;
output OUT0;
output OUT1;
output OUT2;
output OUT3;
output OUT4;
output OUT5;
output OUT6;
output OUT7;
output ISSUPPORTED;


//    SIGNALS

wire FLIP_1;
wire FLIP_2;
wire N02715;
wire N02727;
wire N02739;
wire N02751;
wire N02843;
wire N02858;
wire N02862;
wire N02920;
wire N02924;
wire N02928;
wire N03709;
wire N03713;
wire N03717;
wire N03721;
wire N03741;
wire N03753;
wire N03765;
wire N03780;
wire N03841;
wire N03845;
wire N03849;
wire N03853;
wire N03857;
wire N03861;
wire N03881;
wire N03893;
wire N03941;
wire N03953;
wire N04051;
wire N04055;
wire N04059;
wire N04063;
wire N04067;
wire N04071;
wire N04075;
wire N04079;
wire N04187;
wire N04424;
wire N04428;
wire N04432;
wire N04436;
wire N054482;
wire N06944;

// GATE INSTANCES


NAND21_H U2( 
	.A( Y3 ) , 
	.B( ISSIGNED ) , 
	.Q( N06944 ) 
 ) ;

INV1_H U3( 
	.A( N06944 ) , 
	.Q( FLIP_2 ) 
 ) ;

NAND21_H U4( 
	.A( X3 ) , 
	.B( ISSIGNED ) , 
	.Q( N054482 ) 
 ) ;

INV1_H U5( 
	.A( N054482 ) , 
	.Q( FLIP_1 ) 
 ) ;

XOR21_H U6( 
	.A( FLIP_1 ) , 
	.B( FLIP_2 ) , 
	.Q( N04187 ) 
 ) ;

TIE0_H U7( 
	.Q( N02920 ) 
 ) ;

TEAMG_SIGNCHANGER4BIT FLIPPERX ( 
	.FLIP( FLIP_1 ) , 
	.IN3( X3 ) , 
	.IN2( X2 ) , 
	.IN1( X1 ) , 
	.IN0( X0 ) , 
	.OUT2( N02727 ) , 
	.OUT1( N02739 ) , 
	.OUT0( N02751 ) , 
	.OUT3( N02715 ) 
 ) ;

TEAMG_SIGNCHANGER4BIT FLIPPERY ( 
	.FLIP( FLIP_2 ) , 
	.IN3( Y3 ) , 
	.IN2( Y2 ) , 
	.IN1( Y1 ) , 
	.IN0( Y0 ) , 
	.OUT2( N03941 ) , 
	.OUT1( N02843 ) , 
	.OUT0( N02862 ) , 
	.OUT3( N03953 ) 
 ) ;

TEAMG_SIGNCHANGER8BIT FLIPPER8BIT ( 
	.FLIP( N04187 ) , 
	.IN3( N04063 ) , 
	.IN2( N04059 ) , 
	.IN1( N04055 ) , 
	.IN0( N04051 ) , 
	.OUT2( OUT2 ) , 
	.OUT1( OUT1 ) , 
	.OUT0( OUT0 ) , 
	.OUT3( OUT3 ) , 
	.IN5( N04071 ) , 
	.IN6( N04075 ) , 
	.IN7( N04079 ) , 
	.IN4( N04067 ) , 
	.OUT6( OUT6 ) , 
	.OUT7( OUT7 ) , 
	.OUT4( OUT4 ) , 
	.OUT5( OUT5 ) 
 ) ;

TEAMG_AND AND0 ( 
	.A( N02739 ) , 
	.B( N02862 ) , 
	.OUT( N02858 ) 
 ) ;

TEAMG_AND AND1 ( 
	.A( N02727 ) , 
	.B( N02862 ) , 
	.OUT( N02928 ) 
 ) ;

TEAMG_AND AND2 ( 
	.A( N02715 ) , 
	.B( N02862 ) , 
	.OUT( N02924 ) 
 ) ;

TEAMG_MULTIBLOCK MULTIBLOCK0 ( 
	.X0( N02751 ) , 
	.X1( N02739 ) , 
	.X2( N02727 ) , 
	.X3( N02715 ) , 
	.Y( N02843 ) , 
	.IN0( N02858 ) , 
	.IN1( N02928 ) , 
	.IN2( N02924 ) , 
	.IN3( N02920 ) , 
	.X0O( N03741 ) , 
	.X1O( N03753 ) , 
	.X2O( N03765 ) , 
	.X3O( N03780 ) , 
	.CARRYOUT( N03721 ) , 
	.OUT3( N03717 ) , 
	.OUT2( N03713 ) , 
	.OUT1( N03709 ) , 
	.OUT0( N04055 ) 
 ) ;

TEAMG_AND AND3 ( 
	.A( N02751 ) , 
	.B( N02862 ) , 
	.OUT( N04051 ) 
 ) ;

TEAMG_MULTIBLOCK MULTIBLOCK1 ( 
	.X0( N03741 ) , 
	.X1( N03753 ) , 
	.X2( N03765 ) , 
	.X3( N03780 ) , 
	.Y( N03941 ) , 
	.IN0( N03709 ) , 
	.IN1( N03713 ) , 
	.IN2( N03717 ) , 
	.IN3( N03721 ) , 
	.X0O( N03857 ) , 
	.X1O( N03861 ) , 
	.X2O( N03881 ) , 
	.X3O( N03893 ) , 
	.CARRYOUT( N03845 ) , 
	.OUT3( N03849 ) , 
	.OUT2( N03853 ) , 
	.OUT1( N03841 ) , 
	.OUT0( N04059 ) 
 ) ;

TEAMG_MULTIBLOCK MULTIBLOCK2 ( 
	.X0( N03857 ) , 
	.X1( N03861 ) , 
	.X2( N03881 ) , 
	.X3( N03893 ) , 
	.Y( N03953 ) , 
	.IN0( N03841 ) , 
	.IN1( N03853 ) , 
	.IN2( N03849 ) , 
	.IN3( N03845 ) , 
	.X0O( N04436 ) , 
	.X1O( N04432 ) , 
	.X2O( N04428 ) , 
	.X3O( N04424 ) , 
	.CARRYOUT( N04079 ) , 
	.OUT3( N04075 ) , 
	.OUT2( N04071 ) , 
	.OUT1( N04067 ) , 
	.OUT0( N04063 ) 
 ) ;

endmodule


module TEAMG_DESIGN ( A0, A2, A16, A17, A18, A19, A20, A21, A22,
A23, A15, A11, A10, A9, A8, A7, A6, A5, A4, A3, Q0, Q1, Q16,
Q17, Q18, Q19, Q20, Q21, Q22, Q23, Q15, Q7, Q6, Q5, Q4, Q3,
A1, A14, A12, A13, Q12);
input A0;
input A2;
input A16;
input A17;
input A18;
input A19;
input A20;
input A21;
input A22;
input A23;
input A15;
input A11;
input A10;
input A9;
input A8;
input A7;
input A6;
input A5;
input A4;
input A3;
output Q0;
output Q1;
output Q16;
output Q17;
output Q18;
output Q19;
output Q20;
output Q21;
output Q22;
output Q23;
output Q15;
output Q7;
output Q6;
output Q5;
output Q4;
output Q3;
input A1;
input A14;
input A12;
input A13;
output Q12;


//    SIGNALS


// GATE INSTANCES


INV1_H U1( 
	.A( A0 ) , 
	.Q( Q0 ) 
 ) ;

TEAMG_4BIT_SUBTRACTOR TEAMG_SUBTRACTORCELL ( 
	.BORROWIN( A3 ) , 
	.X0( A4 ) , 
	.Y0( A8 ) , 
	.X1( A5 ) , 
	.X2( A6 ) , 
	.X3( A7 ) , 
	.Y1( A9 ) , 
	.Y2( A10 ) , 
	.Y3( A11 ) , 
	.XY0( Q3 ) , 
	.XY1( Q4 ) , 
	.XY2( Q5 ) , 
	.XY3( Q6 ) , 
	.BORROWOUT( Q7 ) 
 ) ;

TEAMG_RINGOSCILLATOR TEAMG_RINGOSCILLATORCELL ( 
	.ENABLE( A2 ) , 
	.OUTPUT( Q1 ) , 
	.NRESET( A1 ) 
 ) ;

TEAMG_SEQUENCE_RECOGNITION TEAMG_SEQUENCE_RECOGNISER ( 
	.DATAIN( A14 ) , 
	.CLK( A12 ) , 
	.N_RESET( A13 ) , 
	.MATCHALL( Q12 ) 
 ) ;

TEAMG_MULTIPLIER TEAMG_MULTIPLIERCELL ( 
	.Y0( A16 ) , 
	.Y1( A17 ) , 
	.Y2( A18 ) , 
	.Y3( A19 ) , 
	.X0( A20 ) , 
	.X1( A21 ) , 
	.X2( A22 ) , 
	.X3( A23 ) , 
	.ISSIGNED( A15 ) , 
	.OUT0( Q16 ) , 
	.OUT1( Q17 ) , 
	.OUT2( Q18 ) , 
	.OUT3( Q19 ) , 
	.OUT4( Q20 ) , 
	.OUT5( Q21 ) , 
	.OUT6( Q22 ) , 
	.OUT7( Q23 ) , 
	.ISSUPPORTED( Q15 ) 
 ) ;

endmodule


module TEAMG_DESIGN_SIM ( );


//    SIGNALS

wire VDD;
assign VDD = glbl.VDD;
wire GND;
assign GND = glbl.GND;
wire \0 ;
assign \0  = glbl.\0 ;
wire INV_O;
wire MULTI_O_0;
wire MULTI_O_1;
wire MULTI_O_2;
wire MULTI_O_3;
wire MULTI_O_4;
wire MULTI_O_5;
wire MULTI_O_6;
wire MULTI_O_7;
wire MULTI_O_IS;
wire N00641;
wire N01115;
wire N01132;
wire N01144;
wire N01156;
wire N01186;
wire N01274;
wire N01282;
wire N01286;
wire N01290;
wire N01294;
wire N01298;
wire N01302;
wire N01306;
wire N01310;
wire N01314;
wire N01318;
wire N01633;
wire N01637;
wire N01641;
wire N01655;
wire N01659;
wire N01663;
wire N01667;
wire RING_O;
wire SEQ_O_MA;
wire SUB_O_BO;
wire SUB_O_XY0;
wire SUB_O_XY1;
wire SUB_O_XY2;
wire SUB_O_XY3;

// GATE INSTANCES


TEAMG_DESIGN TEAMG_DESIGN ( 
	.A0( N00641 ) , 
	.A2( N01115 ) , 
	.A16( N01186 ) , 
	.A17( N01132 ) , 
	.A18( N01144 ) , 
	.A19( N01156 ) , 
	.A20( N01274 ) , 
	.A21( N01282 ) , 
	.A22( N01286 ) , 
	.A23( N01290 ) , 
	.A15( N01294 ) , 
	.A11( N01298 ) , 
	.A10( N01302 ) , 
	.A9( N01306 ) , 
	.A8( N01310 ) , 
	.A7( N01314 ) , 
	.A6( N01318 ) , 
	.A5( N01655 ) , 
	.A4( N01633 ) , 
	.A3( N01659 ) , 
	.Q0( INV_O ) , 
	.Q1( RING_O ) , 
	.Q16( MULTI_O_0 ) , 
	.Q17( MULTI_O_1 ) , 
	.Q18( MULTI_O_2 ) , 
	.Q19( MULTI_O_3 ) , 
	.Q20( MULTI_O_4 ) , 
	.Q21( MULTI_O_5 ) , 
	.Q22( MULTI_O_6 ) , 
	.Q23( MULTI_O_7 ) , 
	.Q15( MULTI_O_IS ) , 
	.Q7( SUB_O_BO ) , 
	.Q6( SUB_O_XY3 ) , 
	.Q5( SUB_O_XY2 ) , 
	.Q4( SUB_O_XY1 ) , 
	.Q3( SUB_O_XY0 ) , 
	.A1( N01637 ) , 
	.A14( N01663 ) , 
	.A12( N01641 ) , 
	.A13( N01667 ) , 
	.Q12( SEQ_O_MA ) 
 ) ;

endmodule

