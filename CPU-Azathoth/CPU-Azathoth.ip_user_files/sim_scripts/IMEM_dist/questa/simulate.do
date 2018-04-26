onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib IMEM_dist_opt

do {wave.do}

view wave
view structure
view signals

do {IMEM_dist.udo}

run -all

quit -force
