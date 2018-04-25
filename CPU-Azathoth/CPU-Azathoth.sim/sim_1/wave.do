onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sccomp_dataflow_oj_tb/clk_in
add wave -noupdate /sccomp_dataflow_oj_tb/rst
add wave -noupdate /sccomp_dataflow_oj_tb/inst
add wave -noupdate /sccomp_dataflow_oj_tb/pc
add wave -noupdate /sccomp_dataflow_oj_tb/addr
add wave -noupdate /glbl/GSR
add wave -noupdate /sccomp_dataflow_oj_tb/cpuRunning
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/startCounter
add wave -noupdate -expand /sccomp_dataflow_oj_tb/uut/sccpu/cpu_ref/array_reg
add wave -noupdate /sccomp_dataflow_oj_tb/uut/dmemAAddr
add wave -noupdate /sccomp_dataflow_oj_tb/uut/dmemAEn
add wave -noupdate /sccomp_dataflow_oj_tb/uut/dmemAIn
add wave -noupdate /sccomp_dataflow_oj_tb/uut/dmemAOut_Selected
add wave -noupdate /sccomp_dataflow_oj_tb/uut/dmemARealAddr
add wave -noupdate /sccomp_dataflow_oj_tb/uut/dmemAWe
add wave -noupdate /sccomp_dataflow_oj_tb/uut/imemOut
add wave -noupdate /sccomp_dataflow_oj_tb/uut/imemWe
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/aluA
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/aluB
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/aluModeSel
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/aluR
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/aluRX
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/byte
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/extend1Out
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/extend2Out
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/hi
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/rfRAddr1
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/rfRAddr2
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/rfRData1
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/rfRData2
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/rfWAddr
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/rfWData
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/rfWe
add wave -noupdate /sccomp_dataflow_oj_tb/uut/sccpu/uaddR
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {47123 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 316
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {431764 ps}
