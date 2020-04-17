@echo off
set xv_path=D:\\Xilinx_Vivado_SDK_Win_2015.2_0626_1\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 0b9d9776d2df460c80683fc61c783d5d -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot _3To8_Translate_tb_behav xil_defaultlib._3To8_Translate_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
