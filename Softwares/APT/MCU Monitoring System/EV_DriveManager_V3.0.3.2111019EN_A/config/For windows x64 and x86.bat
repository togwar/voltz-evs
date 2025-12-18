@echo off
REM 请求管理员权限

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if '%errorlevel%' NEQ '0' (

    echo 请求管理员权限...

    goto UACPrompt

) else ( goto gotAdmin )

:UACPrompt

    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"

    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"

    exit /B

:gotAdmin

    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )

   pushd "%CD%"

REM  CD /D "%~dp0"


cd /d %~dp0

if /i "%PROCESSOR_IDENTIFIER:~0,3%"=="X86" (

copy MSCOMCTL.OCX %windir%\system32\
regsvr32 /s MSCOMCTL.OCX

copy MSCOMM32.OCX %windir%\system32\
regsvr32 /s MSCOMM32.OCX

copy TABCTL32.OCX %windir%\system32\
regsvr32 /s TABCTL32.OCX
	
) else (
copy MSCOMCTL.OCX %windir%\SysWOW64\
regsvr32 /s MSCOMCTL.OCX

copy MSCOMM32.OCX %windir%\SysWOW64\
regsvr32 /s MSCOMM32.OCX

copy TABCTL32.OCX %windir%\SysWOW64\
regsvr32 /s TABCTL32.OCX)