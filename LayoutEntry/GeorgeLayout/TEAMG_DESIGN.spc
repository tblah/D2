********************************************************************************
* SPICE netlist generated by HiPer Verify's NetList Extractor
*
* Extract Date/Time:	Wed Oct 21 14:00:05 2015
* L-Edit Version:		L-Edit Win64 16.25.20150422.06:31:34
*
* Rule Set Name:		
* TDB File Name:		H:\D2ext\LayoutEntry\GeorgeLayout\GeorgeLib.tdb
* PX Command File:	
* Command File:		H:\D2ext\LayoutEntry\libraries\layout\d2.ext
* Cell Name:			TEAMG_DESIGN
* Write Flat:			NO
********************************************************************************


****************************************
.SUBCKT NAND21_H A B GND_ Q VDD
M1 1 B GND_ GND_ MODN l=3.5e-007 w=2e-006 ad=1e-012 as=1.7e-012 pd=3e-006 ps=5.7e-006  $ (1.25 1.6 1.6 3.6)
M2 Q A 1 GND_ MODN l=3.5e-007 w=2e-006 ad=1.7e-012 as=1e-012 pd=5.7e-006 ps=3e-006  $ (2.6 1.6 2.95 3.6)
M3 Q B VDD VDD MODP l=3.5e-007 w=1.6e-006 ad=8e-013 as=1.36e-012 pd=2.6e-006 ps=4.9e-006  $ (1.25 9.2 1.6 10.8)
M4 VDD A Q VDD MODP l=3.5e-007 w=1.6e-006 ad=1.36e-012 as=8e-013 pd=4.9e-006 ps=2.6e-006  $ (2.6 9.2 2.95 10.8)
* Device count
* M(MODN)		2
* M(MODP)		2
* Number of devices:	4
* Number of nodes:	6
.ENDS

****************************************
.SUBCKT XOR21_H A B GND_ Q VDD
M1 1 B GND_ GND_ MODN l=3.5e-007 w=2e-006 ad=4.5e-013 as=1.7e-012 pd=2.45e-006 ps=5.7e-006  $ (1.15 2.175 1.5 4.175)
M2 Q A 1 GND_ MODN l=3.5e-007 w=2e-006 ad=1.46667e-012 as=4.5e-013 pd=4.26667e-006 ps=2.45e-006  $ (1.95 2.175 2.3 4.175)
M3 GND_ 2 Q GND_ MODN l=3.5e-007 w=1e-006 ad=5.93939e-013 as=7.33333e-013 pd=2.48485e-006 ps=2.13333e-006  $ (3.5 3.175 3.85 4.175)
M4 2 A GND_ GND_ MODN l=3.5e-007 w=6.5e-007 ad=6.55e-013 as=3.86061e-013 pd=2.6e-006 ps=1.61515e-006  $ (4.9 3.325 5.25 3.975)
M5 GND_ B 2 GND_ MODN l=3.5e-007 w=6.5e-007 ad=6.2e-013 as=6.55e-013 pd=3.2e-006 ps=2.6e-006  $ (6.3 2.775 6.95 3.125)
M6 VDD B 3 VDD MODP l=3.5e-007 w=3.2e-006 ad=1.6e-012 as=2.72e-012 pd=4.2e-006 ps=8.1e-006  $ (1.15 7.35 1.5 10.55)
M7 3 A VDD VDD MODP l=3.5e-007 w=3.2e-006 ad=1.6e-012 as=1.6e-012 pd=4.2e-006 ps=4.2e-006  $ (2.5 7.35 2.85 10.55)
M8 Q 2 3 VDD MODP l=3.5e-007 w=3.2e-006 ad=2.72e-012 as=1.6e-012 pd=8.1e-006 ps=4.2e-006  $ (3.85 7.35 4.2 10.55)
M9 4 A VDD VDD MODP l=3.5e-007 w=2.05e-006 ad=4.6125e-013 as=1.7425e-012 pd=2.5e-006 ps=5.8e-006  $ (6.5 8.5 6.85 10.55)
M10 2 B 4 VDD MODP l=3.5e-007 w=2.05e-006 ad=1.7425e-012 as=4.6125e-013 pd=5.8e-006 ps=2.5e-006  $ (7.3 8.5 7.65 10.55)
* Device count
* M(MODN)		5
* M(MODP)		5
* Number of devices:	10
* Number of nodes:	9
.ENDS

****************************************
.SUBCKT INV1_H A GND_ Q VDD
M1 Q A GND_ GND_ MODN l=3.5e-007 w=1e-006 ad=9.25e-013 as=9.25e-013 pd=3.85e-006 ps=3.85e-006  $ (0.85 2.725 1.85 3.075)
M2 Q A VDD VDD MODP l=3.5e-007 w=1.6e-006 ad=1.48e-012 as=1.48e-012 pd=5.05e-006 ps=5.05e-006  $ (1.225 9.7 1.575 11.3)
* Device count
* M(MODN)		1
* M(MODP)		1
* Number of devices:	2
* Number of nodes:	4
.ENDS

****************************************
.SUBCKT TEAMG_HALFADDER_RB A B COUT GND_ SUM VDD
XU2 A B GND_ Q VDD NAND21_H  $ (-2 37.5 2.2 50.5) $T=-2 37.5 0 0 1
XU6 A B GND_ SUM VDD XOR21_H  $ (-11.8 37.5 -2 50.5) $T=-11.8 37.5 0 0 1
XU1 Q GND_ COUT VDD INV1_H  $ (2.2 37.5 5 50.5) $T=2.2 37.5 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	7
.ENDS

****************************************
.SUBCKT MUX21_H A B GND_ Q S VDD
M1 1 S GND_ GND_ MODN l=3.5e-007 w=5e-007 ad=5.9e-013 as=5.1875e-013 pd=3.2e-006 ps=1.98333e-006  $ (0.775 3.15 1.275 3.5)
M2 2 A GND_ GND_ MODN l=3.5e-007 w=1e-006 ad=2.25e-013 as=1.0375e-012 pd=1.45e-006 ps=3.96667e-006  $ (2.55 2.2 2.9 3.2)
M3 3 1 2 GND_ MODN l=3.5e-007 w=1e-006 ad=5e-013 as=2.25e-013 pd=2e-006 ps=1.45e-006  $ (3.35 2.2 3.7 3.2)
M4 4 S 3 GND_ MODN l=3.5e-007 w=1e-006 ad=2.25e-013 as=5e-013 pd=1.45e-006 ps=2e-006  $ (4.7 2.2 5.05 3.2)
M5 GND_ B 4 GND_ MODN l=3.5e-007 w=1e-006 ad=5.25e-013 as=2.25e-013 pd=2.05e-006 ps=1.45e-006  $ (5.5 2.2 5.85 3.2)
M6 Q 3 GND_ GND_ MODN l=3.5e-007 w=1e-006 ad=8.5e-013 as=5.25e-013 pd=3.7e-006 ps=2.05e-006  $ (6.9 2.2 7.25 3.2)
M7 VDD S 1 VDD MODP l=3.5e-007 w=8e-007 ad=5.06667e-013 as=6.8e-013 pd=1.76667e-006 ps=3.3e-006  $ (1.15 9.2 1.5 10)
M8 5 A VDD VDD MODP l=3.5e-007 w=1.6e-006 ad=3.6e-013 as=1.01333e-012 pd=2.05e-006 ps=3.53333e-006  $ (2.55 9.2 2.9 10.8)
M9 3 S 5 VDD MODP l=3.5e-007 w=1.6e-006 ad=8e-013 as=3.6e-013 pd=2.6e-006 ps=2.05e-006  $ (3.35 9.2 3.7 10.8)
M10 6 1 3 VDD MODP l=3.5e-007 w=1.6e-006 ad=3.6e-013 as=8e-013 pd=2.05e-006 ps=2.6e-006  $ (4.7 9.2 5.05 10.8)
M11 VDD B 6 VDD MODP l=3.5e-007 w=1.6e-006 ad=8.4e-013 as=3.6e-013 pd=2.65e-006 ps=2.05e-006  $ (5.5 9.2 5.85 10.8)
M12 Q 3 VDD VDD MODP l=3.5e-007 w=1.6e-006 ad=1.36e-012 as=8.4e-013 pd=4.9e-006 ps=2.65e-006  $ (6.9 9.2 7.25 10.8)
* Device count
* M(MODN)		6
* M(MODP)		6
* Number of devices:	12
* Number of nodes:	12
.ENDS

****************************************
.SUBCKT TEAMG_BITSLICED_FLIPPER_X CIN COUT FLIP GND_ INPUT SUM VDD
XU112 A CIN COUT GND_ SUM VDD TEAMG_HALFADDER_RB  $ (-0.7 13.9 16.1 28.8) $T=4.3 -21.7 1 180 -1
XU111 INPUT GND_ Q VDD INV1_H  $ (24.5 15.8 27.3 28.8) $T=24.5 15.8 0 0 1
XU110 INPUT Q GND_ A FLIP VDD MUX21_H  $ (16.1 15.8 24.5 28.8) $T=16.1 15.8 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	9
.ENDS

****************************************
.SUBCKT TEAMG_HALFADDER_RT A B COUT GND_ SUM VDD
XU2 A B GND_ Q VDD NAND21_H  $ (-2 37.5 2.2 50.5) $T=-2 37.5 0 0 1
XU6 A B GND_ SUM VDD XOR21_H  $ (-11.8 37.5 -2 50.5) $T=-11.8 37.5 0 0 1
XU1 Q GND_ COUT VDD INV1_H  $ (2.2 37.5 5 50.5) $T=2.2 37.5 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	7
.ENDS

****************************************
.SUBCKT TEAMG_SIGNCHANGER_4_BIT_LINE_BOTTOMOUT FLIP GND_ IN0 IN1 IN2 IN3 OUT0 OUT1 OUT2 OUT3 VDD
XU5 IN0 B GND_ Q FLIP VDD MUX21_H  $ (-22.2 30.6 -13.8 43.6) $T=-22.2 30.6 0 0 1
XU13 Q FLIP COUT GND_ OUT0 VDD TEAMG_HALFADDER_RT  $ (-13.8 30.6 3 45.5) $T=-2 -6.9 0 0 1
XU19 IN1 GND_ 1 VDD INV1_H  $ (28.2 30.6 31 43.6) $T=31 30.6 1 180 -1
XU36 IN3 GND_ 2 VDD INV1_H  $ (77.2 30.6 80 43.6) $T=80 30.6 1 180 -1
XU37 3 4 GND_ OUT3 VDD XOR21_H  $ (59 30.6 68.8 43.6) $T=68.8 30.6 1 180 -1
XU33 IN3 2 GND_ 3 FLIP VDD MUX21_H  $ (68.8 30.6 77.2 43.6) $T=77.2 30.6 1 180 -1
XU24 5 6 4 GND_ OUT2 VDD TEAMG_HALFADDER_RT  $ (42.2 30.6 59 45.5) $T=54 -6.9 0 0 1
XU27 IN2 GND_ 7 VDD INV1_H  $ (31 30.6 33.8 43.6) $T=31 30.6 0 0 1
XU23 IN2 7 GND_ 5 FLIP VDD MUX21_H  $ (33.8 30.6 42.2 43.6) $T=33.8 30.6 0 0 1
XU20 8 COUT 6 GND_ OUT1 VDD TEAMG_HALFADDER_RT  $ (3 30.6 19.8 45.5) $T=8 -6.9 1 180 -1
XU18 IN1 1 GND_ 8 FLIP VDD MUX21_H  $ (19.8 30.6 28.2 43.6) $T=28.2 30.6 1 180 -1
XU9 IN0 GND_ B VDD INV1_H  $ (-25 30.6 -22.2 43.6) $T=-25 30.6 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	22
.ENDS

****************************************
.SUBCKT TEAMG_AND_RT A B GND_ Q VDD
XU47 A B GND_ 1 VDD NAND21_H  $ (29.4 17.55 33.6 30.55) $T=29.4 17.55 0 0 1
XU48 1 GND_ Q VDD INV1_H  $ (33.6 17.55 36.4 30.55) $T=33.6 17.55 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	6
.ENDS

****************************************
.SUBCKT TEAMG_FULLADDER_NO_TESSELATION A B CIN COUT GND_ SUM VDD
XU6 A B GND_ Q VDD XOR21_H  $ (-23.6 6.5 -13.8 19.5) $T=-23.6 6.5 0 0 1
XU9 1 2 GND_ COUT VDD NAND21_H  $ (4.4 6.5 8.6 19.5) $T=4.4 6.5 0 0 1
XU10 Q CIN GND_ 2 VDD NAND21_H  $ (0.2 6.5 4.4 19.5) $T=0.2 6.5 0 0 1
XU7 Q CIN GND_ SUM VDD XOR21_H  $ (-9.6 6.5 0.2 19.5) $T=-9.6 6.5 0 0 1
XU8 A B GND_ 1 VDD NAND21_H  $ (-13.8 6.5 -9.6 19.5) $T=-13.8 6.5 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	10
.ENDS

****************************************
.SUBCKT TEAMG_AND_RB A B GND_ Q VDD
XU47 A B GND_ 1 VDD NAND21_H  $ (29.4 17.55 33.6 30.55) $T=29.4 17.55 0 0 1
XU48 1 GND_ Q VDD INV1_H  $ (33.6 17.55 36.4 30.55) $T=33.6 17.55 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	6
.ENDS

****************************************
.SUBCKT TEAMG_MULTIBLOCK_TESSELATION COUT GND_ IN0 IN1 IN2 IN3 OUT0 OUT1 OUT2 OUT3 VDD X0 X1 X2 X3 Y
XU2 A B IN1 1 GND_ OUT1 VDD TEAMG_FULLADDER_NO_TESSELATION  $ (5.05 -3.85 37.25 12) $T=13.65 -7.5 1 180 -1
XU4 2 IN3 Q COUT GND_ OUT3 VDD TEAMG_FULLADDER_NO_TESSELATION  $ (-73.35 -3.85 -41.15 12) $T=-49.75 -7.5 0 0 1
XU6 3 IN0 A GND_ OUT0 VDD TEAMG_HALFADDER_RB  $ (51.25 -2.9 68.05 12) $T=63.05 -38.5 0 0 1
XU66 X3 Y GND_ Q VDD TEAMG_AND_RB  $ (-41.15 -2.6 -34.15 12) $T=-4.75 -18.55 1 180 -1
XU3 4 IN2 1 2 GND_ OUT2 VDD TEAMG_FULLADDER_NO_TESSELATION  $ (-27.15 -3.85 5.05 12) $T=-18.55 -7.5 1 180 -1
XU67 X2 Y GND_ 4 VDD TEAMG_AND_RB  $ (-34.15 -2.6 -27.15 12) $T=-63.55 -18.55 0 0 1
XU64 X1 Y GND_ B VDD TEAMG_AND_RB  $ (37.25 -2.6 44.25 12) $T=73.65 -18.55 1 180 -1
XU65 X0 Y GND_ 3 VDD TEAMG_AND_RB  $ (44.25 -2.6 51.25 12) $T=14.85 -18.55 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	23
.ENDS

****************************************
.SUBCKT TEAMG_HALFSUBTRACTOR_BLOCK_SIDE BOUT GND_ VDD X XY Y
XU5 A GND_ BOUT VDD INV1_H  $ (36.45 16.55 39.25 29.55) $T=36.45 16.55 0 0 1
XU4 Y B GND_ A VDD NAND21_H  $ (32.25 16.55 36.45 29.55) $T=32.25 16.55 0 0 1
XU3 X GND_ B VDD INV1_H  $ (29.45 16.55 32.25 29.55) $T=29.45 16.55 0 0 1
XU2 Y X GND_ XY VDD XOR21_H  $ (19.65 16.55 29.45 29.55) $T=19.65 16.55 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	8
.ENDS

****************************************
.SUBCKT TEAMG_HALFSUBTRACTOR_BLOCK BOUT GND_ VDD X XY Y
XU5 A GND_ BOUT VDD INV1_H  $ (36.45 16.55 39.25 29.55) $T=36.45 16.55 0 0 1
XU4 Y B GND_ A VDD NAND21_H  $ (32.25 16.55 36.45 29.55) $T=32.25 16.55 0 0 1
XU3 X GND_ B VDD INV1_H  $ (29.45 16.55 32.25 29.55) $T=29.45 16.55 0 0 1
XU2 Y X GND_ XY VDD XOR21_H  $ (19.65 16.55 29.45 29.55) $T=19.65 16.55 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	8
.ENDS

****************************************
.SUBCKT TEAMG_FULLSUBTRACTOR_BLOCK BORROWIN BORROWOUT GND_ VDD1 VDD2 X0 X1 X2 X3 XY0 XY1 XY2 XY3 Y0 Y1 Y2 Y3
XU224 BOUT GND_ VDD2 X XY3 Y TEAMG_HALFSUBTRACTOR_BLOCK_SIDE  $ (2.55 -24.05 22.15 -8.1) $T=-17.1 -40.6 0 0 1
XU223 BOUT B GND_ BORROWOUT VDD2 XOR21_H  $ (22.15 -24.05 31.95 -11.05) $T=22.15 -24.05 0 0 1
XU200 1 GND_ VDD2 2 XY2 3 TEAMG_HALFSUBTRACTOR_BLOCK  $ (-17.05 -24.05 2.55 -8.1) $T=-36.7 -40.6 0 0 1
XU199 4 5 GND_ 3 VDD2 XOR21_H  $ (-26.85 -24.05 -17.05 -11.05) $T=-26.85 -24.05 0 0 1
XU195 4 GND_ VDD2 6 XY1 7 TEAMG_HALFSUBTRACTOR_BLOCK  $ (-46.45 -24.05 -26.85 -8.1) $T=-66.1 -40.6 0 0 1
XU13 8 GND_ VDD2 9 XY0 BORROWIN TEAMG_HALFSUBTRACTOR_BLOCK  $ (-66.05 -24.05 -46.45 -8.1) $T=-85.7 -40.6 0 0 1
XU193 10 GND_ VDD1 X0 9 Y0 TEAMG_HALFSUBTRACTOR_BLOCK_SIDE  $ (-66.05 -5.1 -46.45 10.85) $T=-85.7 -21.65 0 0 1
XU222 B GND_ VDD1 X3 X Y3 TEAMG_HALFSUBTRACTOR_BLOCK  $ (12.35 -5.1 31.95 10.85) $T=-7.3 -21.65 0 0 1
XU218 11 GND_ VDD1 X2 2 Y2 TEAMG_HALFSUBTRACTOR_BLOCK_SIDE  $ (-17.05 -5.1 2.55 10.85) $T=-36.7 -21.65 0 0 1
XU204 11 1 GND_ Y VDD1 XOR21_H  $ (2.55 -5.1 12.35 7.9) $T=2.55 -5.1 0 0 1
XU198 5 GND_ VDD1 X1 6 Y1 TEAMG_HALFSUBTRACTOR_BLOCK  $ (-36.65 -5.1 -17.05 10.85) $T=-56.3 -21.65 0 0 1
XU32 10 8 GND_ 7 VDD1 XOR21_H  $ (-46.45 -5.1 -36.65 7.9) $T=-46.45 -5.1 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	32
.ENDS

****************************************
.SUBCKT DFC1_H C D GND_ Q QN RN VDD
M1 GND_ C 1 GND_ MODN l=3.5e-007 w=5e-007 ad=5.375e-013 as=5.9e-013 pd=2.47222e-006 ps=3.2e-006  $ (1.2 2.25 1.55 2.75)
M2 2 1 GND_ GND_ MODN l=3.5e-007 w=4e-007 ad=5.7e-013 as=4.3e-013 pd=3.2e-006 ps=1.97778e-006  $ (2.475 3.15 2.875 3.5)
M3 3 1 GND_ GND_ MODN l=3.5e-007 w=1e-006 ad=2.25e-013 as=7.45e-013 pd=1.45e-006 ps=3.7e-006  $ (4.475 2.9 4.825 3.9)
M4 4 D 3 GND_ MODN l=3.5e-007 w=1e-006 ad=5e-013 as=2.25e-013 pd=2e-006 ps=1.45e-006  $ (5.275 2.9 5.625 3.9)
M5 5 2 4 GND_ MODN l=3.5e-007 w=1e-006 ad=6.58333e-013 as=5e-013 pd=2.25e-006 ps=2e-006  $ (6.625 2.9 6.975 3.9)
M6 6 RN 5 GND_ MODN l=3.5e-007 w=2e-006 ad=4.5e-013 as=1.31667e-012 pd=2.45e-006 ps=4.5e-006  $ (8.35 2.25 8.7 4.25)
M7 GND_ 7 6 GND_ MODN l=3.5e-007 w=2e-006 ad=1.2e-012 as=4.5e-013 pd=4e-006 ps=2.45e-006  $ (9.15 2.25 9.5 4.25)
M8 7 4 GND_ GND_ MODN l=3.5e-007 w=1e-006 ad=5e-013 as=6e-013 pd=2e-006 ps=2e-006  $ (10.5 3.05 10.85 4.05)
M9 8 2 7 GND_ MODN l=3.5e-007 w=1e-006 ad=5e-013 as=5e-013 pd=2e-006 ps=2e-006  $ (11.85 3.05 12.2 4.05)
M10 9 1 8 GND_ MODN l=3.5e-007 w=1e-006 ad=5e-013 as=5e-013 pd=2e-006 ps=2e-006  $ (13.2 3.05 13.55 4.05)
M11 GND_ 10 9 GND_ MODN l=3.5e-007 w=1e-006 ad=6.66667e-013 as=5e-013 pd=2.06667e-006 ps=2e-006  $ (14.55 3.05 14.9 4.05)
M12 11 8 GND_ GND_ MODN l=3.5e-007 w=2e-006 ad=4.5e-013 as=1.33333e-012 pd=2.45e-006 ps=4.13333e-006  $ (16 2.05 16.35 4.05)
M13 10 RN 11 GND_ MODN l=3.5e-007 w=2e-006 ad=1.345e-012 as=4.5e-013 pd=5.8e-006 ps=2.45e-006  $ (16.8 2.05 17.15 4.05)
M14 GND_ 10 Q GND_ MODN l=3.5e-007 w=1e-006 ad=5e-013 as=8.5e-013 pd=2e-006 ps=3.7e-006  $ (20.3 3.375 20.65 4.375)
M15 QN 9 GND_ GND_ MODN l=3.5e-007 w=1e-006 ad=8.5e-013 as=5e-013 pd=3.7e-006 ps=2e-006  $ (21.65 3.375 22 4.375)
M16 VDD C 1 VDD MODP l=3.5e-007 w=1e-006 ad=1.16944e-012 as=7.45e-013 pd=3.86111e-006 ps=3.7e-006  $ (1.15 10.05 1.5 11.05)
M17 2 1 VDD VDD MODP l=3.5e-007 w=8e-007 ad=7.55e-013 as=9.35556e-013 pd=3.9e-006 ps=3.08889e-006  $ (2.2 8.725 3 9.075)
M18 4 1 5 VDD MODP l=3.5e-007 w=1e-006 ad=5e-013 as=1.355e-012 pd=2e-006 ps=5.1e-006  $ (4.4 8.85 5.4 9.2)
M19 12 D 4 VDD MODP l=3.5e-007 w=1.6e-006 ad=3.6e-013 as=8e-013 pd=2.05e-006 ps=3.2e-006  $ (4.4 10.2 6 10.55)
M20 VDD 2 12 VDD MODP l=3.5e-007 w=1.6e-006 ad=1.36e-012 as=3.6e-013 pd=4.9e-006 ps=2.05e-006  $ (4.4 11 6 11.35)
M21 5 RN VDD VDD MODP l=3.5e-007 w=1.95e-006 ad=6.575e-013 as=1.755e-012 pd=3.05e-006 ps=6.8e-006  $ (8.15 8.85 8.85 10.45)
M22 VDD 7 5 VDD MODP l=3.5e-007 w=1.95e-006 ad=9.2875e-013 as=6.575e-013 pd=3.65e-006 ps=3.05e-006  $ (9.3 8.85 10 10.45)
M23 7 4 VDD VDD MODP l=3.5e-007 w=1.95e-006 ad=1.24625e-012 as=9.2875e-013 pd=5.75e-006 ps=3.65e-006  $ (10.45 8.85 11.15 10.45)
M24 8 1 7 VDD MODP l=3.5e-007 w=1e-006 ad=5e-013 as=8.5e-013 pd=2e-006 ps=3.7e-006  $ (11.9 6.65 12.25 7.65)
M25 9 2 8 VDD MODP l=3.5e-007 w=1e-006 ad=8.5e-013 as=5e-013 pd=3.7e-006 ps=2e-006  $ (13.25 6.65 13.6 7.65)
M26 VDD 10 9 VDD MODP l=3.5e-007 w=1.95e-006 ad=9.025e-013 as=1.255e-012 pd=3.6e-006 ps=5.7e-006  $ (15.375 9.25 16.075 10.85)
M27 10 8 VDD VDD MODP l=3.5e-007 w=1.95e-006 ad=6.75e-013 as=9.025e-013 pd=3.1e-006 ps=3.6e-006  $ (16.525 9.25 17.225 10.85)
M28 VDD RN 10 VDD MODP l=3.5e-007 w=1.95e-006 ad=1.6725e-012 as=6.75e-013 pd=6.45e-006 ps=3.1e-006  $ (17.675 9.25 18.375 10.85)
M29 VDD 10 Q VDD MODP l=3.5e-007 w=1.6e-006 ad=8e-013 as=1.36e-012 pd=2.6e-006 ps=4.9e-006  $ (20.3 7.35 20.65 8.95)
M30 QN 9 VDD VDD MODP l=3.5e-007 w=1.6e-006 ad=1.36e-012 as=8e-013 pd=4.9e-006 ps=2.6e-006  $ (21.65 7.35 22 8.95)
* Device count
* M(MODN)		15
* M(MODP)		15
* Number of devices:	30
* Number of nodes:	19
.ENDS

****************************************
.SUBCKT TEAMG_RINGOSCILLATOR_PARTA ENABLE GND_ OUTPUT RN VDD
XU132 C QN GND_ OUTPUT QN RN VDD DFC1_H  $ (151.2 18 175 31) $T=151.2 18 0 0 1
XU115 A ENABLE GND_ 1 VDD NAND21_H  $ (-9.8 18 -5.6 31) $T=-9.8 18 0 0 1
XU129 1 GND_ 2 VDD INV1_H  $ (-5.6 18 -2.8 31) $T=-5.6 18 0 0 1
XU128 2 GND_ 3 VDD INV1_H  $ (-2.8 18 0 31) $T=-2.8 18 0 0 1
XU127 3 GND_ 4 VDD INV1_H  $ (0 18 2.8 31) $T=0 18 0 0 1
XU126 4 GND_ 5 VDD INV1_H  $ (2.8 18 5.6 31) $T=2.8 18 0 0 1
XU125 5 GND_ 6 VDD INV1_H  $ (5.6 18 8.4 31) $T=5.6 18 0 0 1
XU124 6 GND_ 7 VDD INV1_H  $ (8.4 18 11.2 31) $T=8.4 18 0 0 1
XU123 7 GND_ 8 VDD INV1_H  $ (11.2 18 14 31) $T=11.2 18 0 0 1
XU122 8 GND_ 9 VDD INV1_H  $ (14 18 16.8 31) $T=14 18 0 0 1
XU121 9 GND_ 10 VDD INV1_H  $ (16.8 18 19.6 31) $T=16.8 18 0 0 1
XU120 10 GND_ 11 VDD INV1_H  $ (19.6 18 22.4 31) $T=19.6 18 0 0 1
XU114 11 GND_ 12 VDD INV1_H  $ (22.4 18 25.2 31) $T=22.4 18 0 0 1
XU112 13 GND_ 14 VDD INV1_H  $ (28 18 30.8 31) $T=28 18 0 0 1
XU111 12 GND_ 13 VDD INV1_H  $ (25.2 18 28 31) $T=25.2 18 0 0 1
XU105 14 GND_ 15 VDD INV1_H  $ (30.8 18 33.6 31) $T=30.8 18 0 0 1
XU90 15 GND_ 16 VDD INV1_H  $ (33.6 18 36.4 31) $T=33.6 18 0 0 1
XU89 16 GND_ 17 VDD INV1_H  $ (36.4 18 39.2 31) $T=36.4 18 0 0 1
XU79 18 GND_ 19 VDD INV1_H  $ (50.4 18 53.2 31) $T=50.4 18 0 0 1
XU10 20 GND_ 18 VDD INV1_H  $ (47.6 18 50.4 31) $T=47.6 18 0 0 1
XU9 21 GND_ 20 VDD INV1_H  $ (44.8 18 47.6 31) $T=44.8 18 0 0 1
XU8 22 GND_ 21 VDD INV1_H  $ (42 18 44.8 31) $T=42 18 0 0 1
XU7 17 GND_ 22 VDD INV1_H  $ (39.2 18 42 31) $T=39.2 18 0 0 1
XU100 19 GND_ A VDD INV1_H  $ (53.2 18 56 31) $T=53.2 18 0 0 1
XU16 23 24 GND_ C 24 RN VDD DFC1_H  $ (127.4 18 151.2 31) $T=127.4 18 0 0 1
XU15 25 26 GND_ 23 26 RN VDD DFC1_H  $ (103.6 18 127.4 31) $T=103.6 18 0 0 1
XU14 27 28 GND_ 25 28 RN VDD DFC1_H  $ (79.8 18 103.6 31) $T=79.8 18 0 0 1
XU13 A 29 GND_ 27 29 RN VDD DFC1_H  $ (56 18 79.8 31) $T=56 18 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	37
.ENDS

****************************************

XU86 CIN COUT FLIP GND_ INPUT Q20 VDD TEAMG_BITSLICED_FLIPPER_X  $ (111.1 -66.1 129.05 -38.1) $T=141.8 -38.8 1 270 -1
XU82 COUT 1 FLIP GND_ 2 Q21 VDD TEAMG_BITSLICED_FLIPPER_X  $ (111.1 -38.1 129.05 -10.1) $T=141.8 -10.8 1 270 -1
XU81 1 3 FLIP GND_ 4 Q22 VDD TEAMG_BITSLICED_FLIPPER_X  $ (111.1 -10.1 129.05 17.9) $T=141.8 17.2 1 270 -1
XU80 3 5 FLIP GND_ 6 Q23 VDD TEAMG_BITSLICED_FLIPPER_X  $ (111.1 17.9 129.05 45.9) $T=141.8 45.2 1 270 -1
XU98 7 CIN FLIP GND_ 8 Q19 VDD TEAMG_BITSLICED_FLIPPER_X  $ (93 -96.4 121 -78.45) $T=120.3 -109.15 1 180 -1
XU95 9 7 FLIP GND_ 10 Q18 VDD TEAMG_BITSLICED_FLIPPER_X  $ (65 -96.4 93 -78.45) $T=92.3 -109.15 1 180 -1
XU96 11 9 FLIP GND_ 12 Q17 VDD TEAMG_BITSLICED_FLIPPER_X  $ (37 -96.4 65 -78.45) $T=64.3 -109.15 1 180 -1
XU97 FLIP 11 FLIP GND_ 13 Q16 VDD TEAMG_BITSLICED_FLIPPER_X  $ (9 -96.4 37 -78.45) $T=36.3 -109.15 1 180 -1
XU242 14 GND_ A16 A17 A18 A19 OUT0 OUT1 OUT2 OUT3 VDD TEAMG_SIGNCHANGER_4_BIT_LINE_BOTTOMOUT  $ (-3.8 -68.2 14.85 36.8) $T=43.55 -43.2 0 270 1
XU304 OUT3 B GND_ Q VDD TEAMG_AND_RT  $ (17.45 15.85 32.05 22.85) $T=49.6 52.25 1 270 -1
XU113 14 15 GND_ FLIP VDD XOR21_H  $ (-0.8 -93.35 9 -80.35) $T=-0.8 -93.35 0 0 1
XU303 OUT2 B GND_ 16 VDD TEAMG_AND_RT  $ (17.45 -21.3 32.05 -14.3) $T=49.6 15.1 1 270 -1
XU302 OUT1 B GND_ 17 VDD TEAMG_AND_RT  $ (17.45 -50.4 32.05 -43.4) $T=49.6 -14 1 270 -1
XU305 OUT0 B GND_ 18 VDD TEAMG_AND_RT  $ (17.45 -61.4 32.05 -54.4) $T=49.6 -25 1 270 -1
XU93 19 GND_ 20 21 22 23 10 24 25 26 VDD OUT0 OUT1 OUT2 OUT3 Y TEAMG_MULTIBLOCK_TESSELATION  $ (59.15 -74.4 82.2 67) $T=75.3 -6.35 1 270 -1
XU92 23 GND_ 17 16 Q GND_ 12 20 21 22 VDD OUT0 OUT1 OUT2 OUT3 27 TEAMG_MULTIBLOCK_TESSELATION  $ (36.1 -74.4 59.15 67) $T=52.25 -6.35 1 270 -1
XU94 6 GND_ 24 25 26 19 8 INPUT 2 4 VDD OUT0 OUT1 OUT2 OUT3 28 TEAMG_MULTIBLOCK_TESSELATION  $ (82.2 -74.4 105.25 67) $T=98.35 -6.35 1 270 -1
XU27 A3 Q7 GND_ VDD VDD A4 A5 A6 A7 Q3 Q4 Q5 Q6 A8 A9 A10 A11 TEAMG_FULLSUBTRACTOR_BLOCK  $ (-93.95 52.6 5.9 97.4) $T=-27.9 82.35 0 0 1
XU241 15 GND_ A20 A21 A22 A23 B 27 Y 28 VDD TEAMG_SIGNCHANGER_4_BIT_LINE_BOTTOMOUT  $ (28.85 75.35 133.85 94) $T=53.85 46.65 0 0 1
XU112 A23 A15 GND_ 15 VDD TEAMG_AND_RT  $ (21.85 77.25 28.85 91.85) $T=-7.55 59.7 0 0 1
XU111 A19 A15 GND_ 14 VDD TEAMG_AND_RT  $ (14.85 77.25 21.85 91.85) $T=-14.55 59.7 0 0 1
XU30 C QN GND_ Q1 QN A1 VDD DFC1_H  $ (-91.5 -98.45 -67.7 -85.45) $T=-91.5 -85.45 1 0 -1
XU29 A2 GND_ C A1 VDD TEAMG_RINGOSCILLATOR_PARTA  $ (-115.8 -97.15 -96.95 87.65) $T=-81.9 77.85 1 270 -1
XU5 A0 GND_ Q0 VDD INV1_H  $ (-112.9 -99.95 -99.9 -97.15) $T=-99.9 -97.15 1 270 -1
* Top level device count
* Number of devices:	0
* Number of nodes:	79


* Cumulative device count
* M(MODN)		668
* M(MODP)		668
* Number of devices:	1336
* Number of nodes:	702
