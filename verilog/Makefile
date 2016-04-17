#VERILOG=iverilog
VERILOG=~/usr/local/bin/iverilog #hack so I can have iverilog on ecs labs machines

D2: Test.sv
	$(VERILOG) -o D2 Test.sv

.PHONY: test
test: D2
	./D2

.PHONY: clean
clean:
	-rm D2
