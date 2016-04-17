** Include library file

.lib "H:\D2ext\libraries\layout\amsc35b4.lib"


** Include netlist file

** Edit here for different netlist file

.include "H:\D2ext\LayoutEntry\GeorgeLayout\TEAMG_RINGOSCILLATOR.spc"


 

** Specify 0V for GND_

Vgnd GND_ GND 0V

 

** Default 3.3V power supply

Vsupply XU1.VDD GND 3.3V
Vgnd XU1.GND GND 0V

Vsupply2 XU133.VDD GND 3.3V
Vgnd2 XU133.GND GND 0V

Vreset RESETN GND 3.3V

 

** Specify input signals here

** e.g. for inputs A and B

** pw=pulse width, lt=low time, ht=high time, on= on value, off= off value, rt=rise time, ft=fall time

** Edit here for different input signals

VEN XU1.ENABLE GND 3.3V

 

** Display input and output waveform at W-Edit

** Edit here for different input and output display

.print tran v(OUTPUT)
 

** Default simulation, maximum time step=10ps, simulation length=600ns

** Edit here for simulation length

.tran 10p 600n

.end