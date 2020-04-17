@echo off
set xv_path=D:\\Xilinx_Vivado_SDK_Win_2015.2_0626_1\\Vivado\\2015.2\\bin
call %xv_path%/xsim lab1_tb_time_synth -key {Post-Synthesis:sim_1:Timing:lab1_tb} -tclbatch lab1_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
