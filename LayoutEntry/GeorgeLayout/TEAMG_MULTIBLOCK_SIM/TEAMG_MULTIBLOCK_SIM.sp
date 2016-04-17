** Include library file

.lib "H:\D2ext\LayoutEntry\libraries\layout\amsc35b4.lib"




** Include netlist file

** Edit here for different netlist file

.include "H:\D2ext\LayoutEntry\GeorgeLayout\TEAMG_MULTIBLOCK_TESSELATION.spc"


*.include "H:\D2\repo\D2\LayoutEntry\CompiledDesign\TEAMG_DESIGN.spc"
 
** Specify 0V for GND_

Vgnd0 GND_ GND 0V

 

** Default 3.3V power supply

Vsupply VDD GND 3.3V
Vgnd GND GND 0V


VX0 X0 GND 3.3V
VX1 X1 GND 0V
VX2 X2 GND 3.3V
VX3 X3 GND 0V
VIN0 IN0 GND 3.3V
VIN1 IN1 GND 3.3V
VIN2 IN2 GND 0V
VIN3 IN3 GND 0V
VY Y GND 3.3V



** Specify input signals here

** e.g. for inputs A and B

** pw=pulse width, lt=low time, ht=high time, on= on value, off= off value, rt=rise time, ft=fall time

** Edit here for different input signals
 




** Display input and output waveform at W-Edit

** Edit here for different input and output display

.print tran v(OUT0) v(OUT1) v(OUT2) v(OUT3) v(COUT)
 

** Default simulation, maximum time step=10ps, simulation length=600ns

** Edit here for simulation length

.tran 10p 600n

.end