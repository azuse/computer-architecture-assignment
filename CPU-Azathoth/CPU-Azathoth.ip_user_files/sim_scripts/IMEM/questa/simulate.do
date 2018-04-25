onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib IMEM_opt

do {wave.do}

view wave
view structure
view signals

do {IMEM.udo}

run -all

quit -force
