@echo off
cd /d %~dp0

copy MSCOMCTL.OCX %windir%\SysWOW64\
regsvr32 MSCOMCTL.OCX

copy MSCOMM32.OCX %windir%\SysWOW64\
regsvr32 MSCOMM32.OCX

copy TABCTL32.OCX %windir%\SysWOW64\
regsvr32 TABCTL32.OCX