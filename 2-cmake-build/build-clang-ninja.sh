echo build project using cmake
echo using clang/clang++ compilers
echo and ninja

mkdir build/
cd build/

cmake .. -DCMAKE_BUILD_TYPE="Debug" -DCMAKE_C_COMPILER="clang" -DCMAKE_CXX_COMPILER="clang++" -G "Ninja"

