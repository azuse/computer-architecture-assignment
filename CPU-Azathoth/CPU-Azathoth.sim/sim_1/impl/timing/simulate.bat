@echo off
set bin_path=D:\\SoftPath\\modelsim\\win64
call %bin_path%/vsim   -do "do {ALU_tb_simulate.do}" -l simulate.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
