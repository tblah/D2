** Include library file

.lib "..\..\libraries\layout\amsc35b4.lib"




** Include netlist file

** Edit here for different netlist file

.include "TEAMG_DESIGN.spc"


*.include "H:\D2\repo\D2\LayoutEntry\CompiledDesign\TEAMG_DESIGN.spc"
 

** Specify 0V for GND_

Vgnd0 GND_ GND 0V
Vsupply VDD GND 3.3V



*****INVERTER*****
VIN A0 GND PULSE(3.3V,0V,0,10p,10p,50n,100n))
.print tran v(Q0) v(A0)

*****RING OSCILLATOR*****

*VNRESET A1 GND PULSE(3.3V,0V,0,10p,10p,20n,1s)
*VENABLE A2 GND 3.3V

*.print tran v(Q1) v(A1) v(A2)

*****SUBTRACTOR*****
*VBORROWIN A3 GND 3.3V
*VX0 A4 GND 0V
*VX1 A5 GND 0V
*VX2 A6 GND 3.3V
*VX3 A7 GND 3.3V
*VY0 A8 GND 0V
*VY1 A9 GND 3.3V
*VY2 A10 GND 3.3V
*VY3 A11 GND 0V

*.print tran v(Q3) v(Q4) v(Q5) v(Q6) v(Q7)

*****SEQUENCEREC*****
*VCLK A12 GND PULSE(3.3V,0V,15n,10p,10p,10n,20n)
*VNRESET A13 GND PULSE(3.3V,0V,0n,10p,10p,10n,1s)
*VDATA A14 GND BIT({000011001001011011011011001100} pw=20n lt=20n ht=20n on=3.3 off=0 rt=10p ft=10p delay=0)

*.print tran v(A12) v(A13) v(A14) v(Q12)

*****MULTIPLIER*****

*VSIGNED A15 GND 3.3V
*VM0 A16 GND 3.3V
*VM1 A17 GND 0V
*VM2 A18 GND 3.3V
*VM3 A19 GND 0V
*VN0 A20 GND 0V
*VN1 A21 GND 0V
*VN2 A22 GND 3.3V
*VN3 A23 GND 3.3V

*.print v(Q16) v(Q17) v(Q18) v(Q19) v(Q20) v(Q21) v(Q22) v(Q23)


**********

.print v(Q15)
.options maxmsg=0

.tran 10p 600n

.end