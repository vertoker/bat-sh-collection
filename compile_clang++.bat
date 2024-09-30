@echo off
rem clang++ -Wall -Wextra -Wpedantic -Wshadow -Wformat=2 -Wcast-align -Wconversion -Wsign-conversion -Wnull-dereference 
rem --std=c++17 -g3 -O0 -c e:\Projects\CPP\testfield\move-semantics.cpp -o .\build\Debug\move-semantics.o && clang++ 
rem -Wall -Wextra -Wpedantic -Wshadow -Wformat=2 -Wcast-align -Wconversion -Wsign-conversion -Wnull-dereference 
rem --std=c++17 -g3 -O0   .\build\Debug\move-semantics.o -o .\build\Debug\outDebug.exe 

echo This is compiler config for clang++ compiler from LLVM collection for single .cpp file 
echo For launch this, you need installed clang++ and any single *.cpp file (which must be compilable of course)
echo All file pathes RELATED TO THE CURRENT DIRECTORY, consider this!!!
echo made by vertoker
echo -----------------

echo First of all, script needs to know where is located your .cpp file
set /p CppFile=Enter path to your single *.cpp file (example: ./main.cpp): 

echo Next where build will be located
set /p BuildFolder=Enter path to the build folder (example: ./build/): 

echo Next how build must be named (--output=[filepath])
set /p BuildName=Enter name for the build (example: example): 

echo Next select standard of c++ (--std=[standard]) (c++23, c++20, c++17, c++14, c++11, c++03, c++98)
set /p StdVersion=Enter version of c++ standard (example: c++17): 

echo Next select level of optimization (-O[level]) (-O0, -O1, -O2, -O3)
set /p OptimizationLevel=Enter level of optimization (example: -O3): 

echo Denote warnings (-w for ignore, -W[warning] for specified warning) 
echo -Wall -Wextra -Wpedantic -Wshadow -Wformat=2 -Wcast-align -Wconversion -Wsign-conversion -Wnull-dereference
set /p Warnings=Enter warning tags (separated by a space) (example: -Wall -Wextra -Wpedantic): 

echo -----------------
echo Parameters
echo Source file: %CppFile%
echo Build folder: %BuildFolder%
echo .exe location: %BuildFolder%%BuildName%.exe

echo C++ Standard: --std=%StdVersion%
echo Optimization level: %OptimizationLevel%
echo Warning tags: %Warnings%

echo -----------------
echo Compilation
@echo on

MkDir "%BuildFolder%"
clang++ %Warnings% --std=%StdVersion% %OptimizationLevel% %CppFile% --output=%BuildFolder%%BuildName%.exe