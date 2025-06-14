if {[file isdirectory work]} {vdel -all -lib work}
vlib work
vmap work work

vlog -work work ../../HDL/clock_divider.sv

vlog -work work clock_divider_tb.sv
vsim -voptargs=+acc work.clock_divider_tb

quietly set StdArithNoWarnings 1
quietly set StdVitalGlitchNoWarnings 1

do wave.do
run -all
