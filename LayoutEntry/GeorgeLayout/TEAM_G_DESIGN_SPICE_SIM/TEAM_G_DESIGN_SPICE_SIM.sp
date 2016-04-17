** Include library file

.lib "H:\D2ext\LayoutEntry\libraries\layout\amsc35b4.lib"


.options maxmsg=0

** Include netlist file

** Edit here for different netlist file

.include "H:\D2ext\LayoutEntry\GeorgeLayout\TEAMG_DESIGN.spc"

*.include "H:\D2\repo\D2\LayoutEntry\CompiledDesign\TEAMG_DESIGN.spc"
 
** Specify 0V for GND_

Vgnd0 GND_ GND 0V

 

** Default 3.3V power supply

Vsupply VDD GND 3.3V
Vgnd GND GND 0V


VISSIGNED A15 GND 3.3V
VX0 A16 GND 0V
VX1 A17 GND 0V
VX2 A18 GND 3.3V
VX3 A19 GND 3.3V
VY0 A20 GND 0V
VY1 A21 GND 3.3V
VY2 A22 GND 3.3V
VY3 A23 GND 0V




** Specify input signals here

** e.g. for inputs A and B

** pw=pulse width, lt=low time, ht=high time, on= on value, off= off value, rt=rise time, ft=fall time

** Edit here for different input signals
 




** Display input and output waveform at W-Edit

** Edit here for different input and output display

.print tran v(Q16) v(Q17) v(Q18) v(Q19) v(Q20) v(Q21) v(Q22) v(Q23)

** Default simulation, maximum time step=10ps, simulation length=600ns

** Edit here for simulation length

.tran 10p 10n

.end