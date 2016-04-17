

.lib "H:\D2ext\libraries\layout\amsc35b4.lib"
.include "H:\D2ext\LayoutEntry\GeorgeLayout\TEAMG_SIGNCHANGER_4_BIT_LINE_BOTTOMOUT.spc"


Vgnd0 GND_ GND 0V

 

** Default 3.3V power supply

Vsupply VDD GND 3.3V
Vgnd GND GND 0V


VFLIP FLIP GND 0V
VIN0 IN0 GND 3.3V
VIN1 IN1 GND 0V
VIN2 IN2 GND 0V
VIN3 IN3 GND 0V



.print tran v(OUT0) v(OUT1) v(OUT2) v(OUT3)

.tran 10p 100n