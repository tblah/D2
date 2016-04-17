********************************************************************************
* SPICE netlist generated by HiPer Verify's NetList Extractor
*
* Extract Date/Time:	Fri Oct 16 14:13:44 2015
* L-Edit Version:		L-Edit Win64 16.25.20150422.06:31:34
*
* Rule Set Name:		
* TDB File Name:		H:\D2ext\LayoutEntry\GeorgeLayout\GeorgeLib.tdb
* PX Command File:	
* Command File:		H:\D2ext\LayoutEntry\libraries\layout\d2.ext
* Cell Name:			SIMCELL
* Write Flat:			NO
********************************************************************************


****************************************
.SUBCKT DFC1_H C D GND_ Q QN RN VDD
M1 GND_ C 1 GND_ MODN l=3.5e-007 w=5e-007  $ (1.2 2.25 1.55 2.75)
M2 2 1 GND_ GND_ MODN l=3.5e-007 w=4e-007  $ (2.475 3.15 2.875 3.5)
M3 3 1 GND_ GND_ MODN l=3.5e-007 w=1e-006  $ (4.475 2.9 4.825 3.9)
M4 4 D 3 GND_ MODN l=3.5e-007 w=1e-006  $ (5.275 2.9 5.625 3.9)
M5 5 2 4 GND_ MODN l=3.5e-007 w=1e-006  $ (6.625 2.9 6.975 3.9)
M6 6 RN 5 GND_ MODN l=3.5e-007 w=2e-006  $ (8.35 2.25 8.7 4.25)
M7 GND_ 7 6 GND_ MODN l=3.5e-007 w=2e-006  $ (9.15 2.25 9.5 4.25)
M8 7 4 GND_ GND_ MODN l=3.5e-007 w=1e-006  $ (10.5 3.05 10.85 4.05)
M9 8 2 7 GND_ MODN l=3.5e-007 w=1e-006  $ (11.85 3.05 12.2 4.05)
M10 9 1 8 GND_ MODN l=3.5e-007 w=1e-006  $ (13.2 3.05 13.55 4.05)
M11 GND_ 10 9 GND_ MODN l=3.5e-007 w=1e-006  $ (14.55 3.05 14.9 4.05)
M12 11 8 GND_ GND_ MODN l=3.5e-007 w=2e-006  $ (16 2.05 16.35 4.05)
M13 10 RN 11 GND_ MODN l=3.5e-007 w=2e-006  $ (16.8 2.05 17.15 4.05)
M14 GND_ 10 Q GND_ MODN l=3.5e-007 w=1e-006  $ (20.3 3.375 20.65 4.375)
M15 QN 9 GND_ GND_ MODN l=3.5e-007 w=1e-006  $ (21.65 3.375 22 4.375)
M16 VDD C 1 VDD MODP l=3.5e-007 w=1e-006  $ (1.15 10.05 1.5 11.05)
M17 2 1 VDD VDD MODP l=3.5e-007 w=8e-007  $ (2.2 8.725 3 9.075)
M18 4 1 5 VDD MODP l=3.5e-007 w=1e-006  $ (4.4 8.85 5.4 9.2)
M19 12 D 4 VDD MODP l=3.5e-007 w=1.6e-006  $ (4.4 10.2 6 10.55)
M20 VDD 2 12 VDD MODP l=3.5e-007 w=1.6e-006  $ (4.4 11 6 11.35)
M21 5 RN VDD VDD MODP l=3.5e-007 w=1.95e-006  $ (8.15 8.85 8.85 10.45)
M22 VDD 7 5 VDD MODP l=3.5e-007 w=1.95e-006  $ (9.3 8.85 10 10.45)
M23 7 4 VDD VDD MODP l=3.5e-007 w=1.95e-006  $ (10.45 8.85 11.15 10.45)
M24 8 1 7 VDD MODP l=3.5e-007 w=1e-006  $ (11.9 6.65 12.25 7.65)
M25 9 2 8 VDD MODP l=3.5e-007 w=1e-006  $ (13.25 6.65 13.6 7.65)
M26 VDD 10 9 VDD MODP l=3.5e-007 w=1.95e-006  $ (15.375 9.25 16.075 10.85)
M27 10 8 VDD VDD MODP l=3.5e-007 w=1.95e-006  $ (16.525 9.25 17.225 10.85)
M28 VDD RN 10 VDD MODP l=3.5e-007 w=1.95e-006  $ (17.675 9.25 18.375 10.85)
M29 VDD 10 Q VDD MODP l=3.5e-007 w=1.6e-006  $ (20.3 7.35 20.65 8.95)
M30 QN 9 VDD VDD MODP l=3.5e-007 w=1.6e-006  $ (21.65 7.35 22 8.95)
* Device count
* M(MODN)		15
* M(MODP)		15
* Number of devices:	30
* Number of nodes:	19
.ENDS

****************************************
.SUBCKT TEAMG_RINGOSCILLATOR_PARTB 3 4 C GND_ Q RN
XU43 1 D GND_ Q D RN CLK1 DFC1_H  $ (31.5 16.6 55.3 29.6) $T=31.5 29.6 1 0 -1
XU44 C 2 GND_ 3 2 4 CLK1 DFC1_H  $ (7.7 16.6 31.5 29.6) $T=7.7 29.6 1 0 -1
* Device count
* Number of devices:	0
* Number of nodes:	10
.ENDS

****************************************
.SUBCKT INV1_H A GND_ Q VDD
M1 Q A GND_ GND_ MODN l=3.5e-007 w=1e-006  $ (0.85 2.725 1.85 3.075)
M2 Q A VDD VDD MODP l=3.5e-007 w=1.6e-006  $ (1.225 9.7 1.575 11.3)
* Device count
* M(MODN)		1
* M(MODP)		1
* Number of devices:	2
* Number of nodes:	4
.ENDS

****************************************
.SUBCKT NAND21_H A B GND_ Q VDD
M1 1 B GND_ GND_ MODN l=3.5e-007 w=2e-006  $ (1.25 1.6 1.6 3.6)
M2 Q A 1 GND_ MODN l=3.5e-007 w=2e-006  $ (2.6 1.6 2.95 3.6)
M3 Q B VDD VDD MODP l=3.5e-007 w=1.6e-006  $ (1.25 9.2 1.6 10.8)
M4 VDD A Q VDD MODP l=3.5e-007 w=1.6e-006  $ (2.6 9.2 2.95 10.8)
* Device count
* M(MODN)		2
* M(MODP)		2
* Number of devices:	4
* Number of nodes:	6
.ENDS

****************************************
.SUBCKT TEAMG_RINGOSCILLATOR_PARTA CLK1 ENABLE GND_ OUT1 OUT2 OUTPUT RESETN
XU80 A GND_ Q VDD INV1_H  $ (53.2 18 56 31) $T=53.2 18 0 0 1
XU79 1 GND_ A VDD INV1_H  $ (50.4 18 53.2 31) $T=50.4 18 0 0 1
XU10 2 GND_ 1 VDD INV1_H  $ (47.6 18 50.4 31) $T=47.6 18 0 0 1
XU9 3 GND_ 2 VDD INV1_H  $ (44.8 18 47.6 31) $T=44.8 18 0 0 1
XU8 4 GND_ 3 VDD INV1_H  $ (42 18 44.8 31) $T=42 18 0 0 1
XU7 5 GND_ 4 VDD INV1_H  $ (39.2 18 42 31) $T=39.2 18 0 0 1
XU6 6 GND_ 5 VDD INV1_H  $ (36.4 18 39.2 31) $T=36.4 18 0 0 1
XU5 7 GND_ 6 VDD INV1_H  $ (33.6 18 36.4 31) $T=33.6 18 0 0 1
XU4 8 GND_ 7 VDD INV1_H  $ (30.8 18 33.6 31) $T=30.8 18 0 0 1
XU3 9 GND_ 8 VDD INV1_H  $ (28 18 30.8 31) $T=28 18 0 0 1
XU1 Q ENABLE GND_ 9 VDD NAND21_H  $ (23.8 18 28 31) $T=23.8 18 0 0 1
XU28 C D GND_ 10 D RESETN VDD DFC1_H  $ (151.2 18 175 31) $T=151.2 18 0 0 1
XU27 10 11 GND_ OUTPUT 11 RESETN VDD DFC1_H  $ (175 18 198.8 31) $T=175 18 0 0 1
XU16 12 13 GND_ C 13 RESETN VDD DFC1_H  $ (127.4 18 151.2 31) $T=127.4 18 0 0 1
XU15 OUT2 14 GND_ 12 14 RESETN VDD DFC1_H  $ (103.6 18 127.4 31) $T=103.6 18 0 0 1
XU14 OUT1 15 GND_ CLK2 15 RESETN VDD DFC1_H  $ (79.8 18 103.6 31) $T=79.8 18 0 0 1
XU13 Q 16 GND_ CLK1 16 RESETN VDD DFC1_H  $ (56 18 79.8 31) $T=56 18 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	29
.ENDS

****************************************
.SUBCKT TEAMG_RINGOSCILLATOR GND_
XU2 OUT1 RESETN C GND_ Q RESETN TEAMG_RINGOSCILLATOR_PARTB  $ (-4.6 3.9 43 18.8) $T=-12.3 -12.7 0 0 1
XU1 C ENABLE GND_ OUT1 Q OUTPUT RESETN TEAMG_RINGOSCILLATOR_PARTA  $ (-55.25 -16.4 119.75 2.45) $T=-79.05 -31.45 0 0 1
* Device count
* Number of devices:	0
* Number of nodes:	7
.ENDS

****************************************

XU4 GND_ TEAMG_RINGOSCILLATOR  $ (-67.45 13.2 107.55 48.4) $T=-12.2 29.6 0 0 1
* Top level device count
* Number of devices:	0
* Number of nodes:	1


* Cumulative device count
* M(MODN)		132
* M(MODP)		132
* Number of devices:	264
* Number of nodes:	130
