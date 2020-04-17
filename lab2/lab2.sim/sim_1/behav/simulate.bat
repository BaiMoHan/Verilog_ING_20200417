@echo off
set xv_path=D:\\Xilinx_Vivado_SDK_Win_2015.2_0626_1\\Vivado\\2015.2\\bin
call %xv_path%/xsim _3To8_Translate_tb_behav -key {Behavioral:sim_1:Functional:_3To8_Translate_tb} -tclbatch _3To8_Translate_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
