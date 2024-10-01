@echo off
echo This is compiler config for single .cpp file 
echo For launch this, you need installed any C++ compiler (clang++ or g++) and any single *.cpp file (which must be compilable of course)
echo All file pathes RELATED TO THE CURRENT DIRECTORY, consider this!!!
echo made by vertoker
echo -----------------

echo First of all, script needs to know C++ compiler you want to use (clang++ or g++)
set /p CppCompiler=Enter C++ compiler you want to use (example: clang++): 

echo Next script needs to know where is located your .cpp file
set /p CppFile=Enter path to your single *.cpp file (example: ./main.cpp): 

echo Next where build will be located
set /p BuildFolder=Enter path to the build folder (example: ./build/): 

echo Next how build must be named (--output=[filepath])
set /p BuildName=Enter name for the build (example: example): 

echo Next select standard of c++ (--std=[standard]) (c++23, c++20, c++17, c++14, c++11, c++03, c++98)
set /p StdVersion=Enter version of c++ standard (example: c++17): 

echo Next select level of optimization (-O[level]) (-O0, -O1, -O2, -O3)
set /p OptimizationLevel=Enter level of optimization (example: -O3): 

echo Next select level of debugging (-g[level]) (-g0, -g1, -g2, -g3)
set /p DebugLevel=Enter level of debug (example: -g3): 

echo Denote warnings (-w for ignore, -W[warning] for specified warning) 
echo -Wall -Wextra -Wpedantic -Wshadow -Wformat=2 -Wcast-align -Wconversion -Wsign-conversion -Wnull-dereference
set /p Warnings=Enter warning tags (separated by a space) (example: -Wall -Wextra -Wpedantic): 

echo -----------------
echo Parameters
echo C++ Compiler: %CppCompiler%
echo Source file: %CppFile%
echo Build folder: %BuildFolder%
echo .exe location: %BuildFolder%%BuildName%.exe
echo .o location: %BuildFolder%%BuildName%.o

echo C++ Standard: --std=%StdVersion%
echo Optimization level: %OptimizationLevel%
echo Debug level: %DebugLevel%
echo Warning tags: %Warnings%

echo -----------------
echo Compilation
MkDir "%BuildFolder%"

rem Source -> Preprocessor -> Executable

@echo on
%CppCompiler% %Warnings% --std=%StdVersion% %OptimizationLevel% %DebugLevel% -c %CppFile% --output=%BuildFolder%%BuildName%.o
%CppCompiler% %Warnings% --std=%StdVersion% %OptimizationLevel% %DebugLevel% %BuildFolder%%BuildName%.o --output=%BuildFolder%%BuildName%.exe
@echo off

pause
