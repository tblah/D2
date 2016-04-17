**

.lib "H:\D2\repo\D2\libraries\layout\amsc35b4.lib"
.include "H:\D2\repo\D2\LayoutEntry\Clotty\TEAMG_FULLSUBTRACTOR_BLOCK.spc"

** Include library file

*.lib "H:\D2\repo\D2\libraries\layout\amsc35b4.lib"
*.include "H:\D2\repo\D2\LayoutEntry\Clotty\TEAMG_FULLSUBTRACTOR_BLOCK.spc"


 
Vgnd GND_ GND 0V
Vsupply VDD1 GND 3.3V
Vsupply2 VDD2 GND 3.3V

Vbin BORROWIN GND 0V
Vx0 X0 GND 3.3V
Vx1 X1 GND 3.3V
Vx2 X2 GND 0V
Vx3 X3 GND 0V
Vy0 Y0 GND 3.3V
Vy1 Y1 GND 0V
Vy2 Y2 GND 0V
Vy3 Y3 GND 0V

.print tran v(XY0) v(XY1) v(XY2) v(XY3) v(BORROWOUT)
.tran 10p 100n

.end