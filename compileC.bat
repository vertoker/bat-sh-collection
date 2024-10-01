@echo off
echo This is compiler config for single .c file 
echo For launch this, you need installed any C compiler (clang or gcc) and any single *.c file (which must be compilable of course)
echo All file pathes RELATED TO THE CURRENT DIRECTORY, consider this!!!
echo made by vertoker
echo -----------------

echo First of all, script needs to know C compiler you want to use (clang or gcc)
set /p CCompiler=Enter C compiler you want to use (example: clang): 

echo Next script needs to know where is located your .c file
set /p CFile=Enter path to your single *.c file (example: ./main.c): 

echo Next where build will be located
set /p BuildFolder=Enter path to the build folder (example: ./build/): 

echo Next how build must be named (--output=[filepath])
set /p BuildName=Enter name for the build (example: example): 

echo Next select standard of c (--std=[standard]) (c23, c17, c11, c99, c89)
set /p StdVersion=Enter version of c standard (example: c17): 

echo Next select level of optimization (-O[level]) (-O0, -O1, -O2, -O3)
set /p OptimizationLevel=Enter level of optimization (example: -O3): 

echo Next select level of debugging (-g[level]) (-g0, -g1, -g2, -g3)
set /p DebugLevel=Enter level of debug (example: -g3): 

echo Denote warnings (-w for ignore, -W[warning] for specified warning) 
echo -Wall -Wextra -Wpedantic -Wshadow -Wformat=2 -Wcast-align -Wconversion -Wsign-conversion -Wnull-dereference
set /p Warnings=Enter warning tags (separated by a space) (example: -Wall -Wextra -Wpedantic): 

echo -----------------
echo Parameters
echo C Compiler: %CCompiler%
echo Source file: %CFile%
echo Build folder: %BuildFolder%
echo .exe location: %BuildFolder%%BuildName%.exe
echo .o location: %BuildFolder%%BuildName%.o

echo C Standard: --std=%StdVersion%
echo Optimization level: %OptimizationLevel%
echo Debug level: %DebugLevel%
echo Warning tags: %Warnings%

echo -----------------
echo Compilation
MkDir "%BuildFolder%"

rem Source -> Preprocessor -> Executable

@echo on
%CCompiler% %Warnings% --std=%StdVersion% %DebugLevel% %OptimizationLevel% -c %CFile% --output=%BuildFolder%%BuildName%.o
%CCompiler% %Warnings% --std=%StdVersion% %DebugLevel% %OptimizationLevel% %BuildFolder%%BuildName%.o --output=%BuildFolder%%BuildName%.exe
@echo off

pause
