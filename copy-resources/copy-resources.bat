@echo off
rem My old script for some project (until I learn CMake)
rem !!! This script works only from current directory !!!
rem It deletes resources folder and replace it with copy of origin resources
rem made by vertoker

setlocal
cd /d %~dp0
cd ..

set SOURCE=%cd%\resources
set DEBUG=%cd%\out\Debug\resources
set RELEASE=%cd%\out\Release\resources

@echo on

RD /S /Q "%DEBUG%"
RD /S /Q "%RELEASE%"

md "%SOURCE%"
md "%DEBUG%"
md "%RELEASE%"

xcopy /s "%SOURCE%" "%DEBUG%"
xcopy /s "%SOURCE%" "%RELEASE%"
