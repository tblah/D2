** Include library file

.lib "H:\D2ext\LayoutEntry\libraries\layout\amsc35b4.lib"




** Include netlist file

** Edit here for different netlist file

.include "H:\D2ext\LayoutEntry\GeorgeLayout\TEAMG_FULLADDER_NO_TESSELATION.spc"


*.include "H:\D2\repo\D2\LayoutEntry\CompiledDesign\TEAMG_DESIGN.spc"
 
** Specify 0V for GND_

Vgnd0 GND_ GND 0V

 

** Default 3.3V power supply

Vsupply VDD GND 3.3V
Vgnd GND GND 0V


VA A GND 3.3V
VB B GND 0V
VCIN CIN GND 3.3V




** Specify input signals here

** e.g. for inputs A and B

** pw=pulse width, lt=low time, ht=high time, on= on value, off= off value, rt=rise time, ft=fall time

** Edit here for different input signals
 




** Display input and output waveform at W-Edit

** Edit here for different input and output display

.print tran v(SUM) v(COUT)
 

** Default simulation, maximum time step=10ps, simulation length=600ns

** Edit here for simulation length

.tran 10p 600n

.end