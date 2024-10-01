echo "This is compiler config for clang compiler from LLVM for single .c file"
echo "For launch this, you need installed clang and any compilable single *.c file"
echo "All file pathes RELATED TO THE CURRENT DIRECTORY, consider this!!!"
echo "made by vertoker"
echo "--------------------------"

echo "First of all, script needs to know where is located your .c file"
echo "Enter path to your single *.c file (example: ./main.c)"
read CFile

echo "Next where build will be located"
echo "Enter path to the build folder (example: ./build/)"
read BuildFolder

echo "Next how build must be named (--output=[filepath])"
echo "Enter name for the build (example: example)"
read BuildName

echo "Next select standard of c (--std=[standard]) (c23, c17, c11, c99, c89)"
echo "Enter version of c standard (example: c17)"
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
echo "Source file: $CFile"
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

clang $Warnings --std=$StdVersion $DebugLevel $OptimizationLevel -c $CFile --output="$BuildFolder$BuildName.o"
clang $Warnings --std=$StdVersion $DebugLevel $OptimizationLevel "$BuildFolder$BuildName.o" --output="$BuildFolder$BuildName.out"


