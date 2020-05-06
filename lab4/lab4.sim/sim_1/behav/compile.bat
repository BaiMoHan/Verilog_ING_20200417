@echo off
set xv_path=D:\\Xilinx_Vivado_SDK_Win_2015.2_0626_1\\Vivado\\2015.2\\bin
echo "xvlog -m64 --relax -prj auto_add_tb_vlog.prj"
call %xv_path%/xvlog  -m64 --relax -prj auto_add_tb_vlog.prj -log compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
