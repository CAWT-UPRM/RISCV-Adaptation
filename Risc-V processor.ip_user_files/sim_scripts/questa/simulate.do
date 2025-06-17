onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib SC_stimulus_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {SC_stimulus.udo}

run 1000ns

quit -force
