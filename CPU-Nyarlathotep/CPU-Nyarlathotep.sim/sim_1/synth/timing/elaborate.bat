@echo off
set xv_path=D:\\SoftPath\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto ef333b10912d46d28a1712e6070ca6f1 -m64 --debug typical --relax --mt 2 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot computer_tb_time_synth -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.computer_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
