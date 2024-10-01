echo "This is compiler config for single .cpp file"
echo "For launch this, you need installed any C++ compiler (clang++ or g++) and any compilable single *.cpp file"
echo "All file pathes RELATED TO THE CURRENT DIRECTORY, consider this!!!"
echo "made by vertoker"
echo "--------------------------"

echo "First of all, script needs to know C++ compiler you want to use (clang++ or g++)"
echo "Enter C++ compiler you want to use (example: clang++)"
read CppCompiler

echo "Next script needs to know where is located your .cpp file"
echo "Enter path to your single *.cpp file (example: ./main.cpp)"
read CppFile

echo "Next where build will be located"
echo "Enter path to the build folder (example: ./build/)"
read BuildFolder

echo "Next how build must be named (--output=[filepath])"
echo "Enter name for the build (example: example)"
read BuildName

echo "Next select standard of c++ (--std=[standard]) (c++23, c++20, c++17, c++14, c++11, c++03, c++98)"
echo "Enter version of c standard (example: c++17)"
read StdVersion

echo "Next select level of optimization (-O[level]) (-O0, -O1, -O2, -O3)"
echo "Enter level of optimization (example: -O3)"
read OptimizationLevel

echo "Next select level of debugging (-g[level]) (-g0, -g1, -g2, -g3)"
echo "Enter level of debug (example: -g3)"
read DebugLevel

echo "Denote warnings (-w for ignore, -W[warning] for specified warning)" 
echo "-Wall -Wextra -Wpedantic -Wshadow -Wformat=2 -Wcast-align -Wconversion -Wsign-conversion -Wnull-dereference"
echo "Enter warning tags (separated by a space) (example: -Wall -Wextra -Wpedantic)"
read Warnings

echo -----------------
echo "Parameters"
echo "C++ Compiler: $CppCompiler"
echo "Source file: $CppFile"
echo "Build folder: $BuildFolder"
echo ".out location: $BuildFolder$BuildName.out"
echo ".o location: $BuildFolder$BuildName.o"

echo "C Standard: --std=$StdVersion"
echo "Optimization level: $OptimizationLevel"
echo "Debug level: $DebugLevel"
echo "Warning tags: $Warnings"

echo -----------------
echo "Compilation"
mkdir $BuildFolder

$CppCompiler $Warnings --std=$StdVersion $DebugLevel $OptimizationLevel -c $CppFile --output="$BuildFolder$BuildName.o"
echo "Create .o file at path $BuildFolder$BuildName.o"

$CppCompiler $Warnings --std=$StdVersion $DebugLevel $OptimizationLevel "$BuildFolder$BuildName.o" --output="$BuildFolder$BuildName.out"
echo "Create .out file at path $BuildFolder$BuildName.out"

