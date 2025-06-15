transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+SC_stimulus  -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_9 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.SC_stimulus xil_defaultlib.glbl

do {SC_stimulus.udo}

run 1000ns

endsim

quit -force
