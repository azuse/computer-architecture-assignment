@echo off
set xv_path=D:\\SoftPath\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim computer_tb_time_synth -key {Post-Synthesis:sim_1:Timing:computer_tb} -tclbatch computer_tb.tcl -view D:/Projects/CompArch/CPU-Nyarlathotep/computer_tb_time_synth.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
