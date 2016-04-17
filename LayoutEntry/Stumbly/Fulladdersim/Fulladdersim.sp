
** Include library file

.lib "H:\SecondYear\D2\Git\LayoutEntry\Stumbly\amsc35b4.lib"

** Include netlist file

** Edit here for different netlist file


.include "H:\SecondYear\D2\Git\LayoutEntry\Stumbly\FULL_ADDER.spc"

 

** Specify 0V for GND_

Vgnd GND_ GND 0V

 

** Default 3.3V power supply

Vsupply VDD GND 3.3V

 

** Specify input signals here

** e.g. for inputs A and B

** pw=pulse width, lt=low time, ht=high time, on= on value, off= off value, rt=rise time, ft=fall time

** Edit here for different input signals

VA A GND BIT ({0101010101010101} pw=100n lt=50n ht=50n on=3.3 off=0 rt=1n ft=1n delay=0)

VB B GND BIT ({0011001100110011} pw=100n lt=50n ht=50n on=3.3 off=0 rt=1n ft=1n delay=0)
VCIN CIN GND BIT ({0000111100001111} pw=100n lt=50n ht=50n on=3.3 off=0 rt=1n ft=1n delay=0)


 

** Display input and output waveform at W-Edit

** Edit here for different input and output display

.print tran v(A) v(B) v(CIN) v(SUM) v(COUT)

 

** Default simulation, maximum time step=10ps, simulation length=600ns

** Edit here for simulation length

.tran 10p 600n

.end