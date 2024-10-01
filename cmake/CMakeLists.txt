
cmake_minimum_required(VERSION 3.12)
project(test-build)
set(CMAKE_CXX_STANDARD 17)

file(GLOB_RECURSE SOURCES CMAKE_CONFIGURE_DEPENDS 
	"src/*.hpp" "src/*.cpp" "src/*.h" "src/*.c")
add_executable(executable ${SOURCES})

