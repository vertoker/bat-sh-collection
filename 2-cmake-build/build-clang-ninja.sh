echo build project using
echo - cmake
echo - clang/clang++ compilers
echo - ninja

mkdir out/
cd out/

cmake .. -DCMAKE_BUILD_TYPE="Debug" -DCMAKE_C_COMPILER="clang" -DCMAKE_CXX_COMPILER="clang++" -G "Ninja"
ninja
./executable

