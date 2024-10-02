
cmake_minimum_required(VERSION 3.12)
project(test-build)

set(CMAKE_MAKE_PROGRAM                  "Ninja")
set(CMAKE_CXX_STANDARD                  17)
set(CMAKE_C_COMPILER                    "clang")
set(CMAKE_CXX_COMPILER                  "clang++")

set(CMAKE_C_FLAGS_INIT                  "-Wall -std=c11")
set(CMAKE_C_FLAGS_DEBUG_INIT            "-g")
set(CMAKE_C_FLAGS_MINSIZEREL_INIT       "-Os -DNDEBUG")
set(CMAKE_C_FLAGS_RELEASE_INIT          "-O3 -DNDEBUG")
set(CMAKE_C_FLAGS_RELWITHDEBINFO_INIT   "-O2 -g")

set(CMAKE_CXX_FLAGS_INIT                "-Wall -std=c++17")
set(CMAKE_CXX_FLAGS_DEBUG_INIT          "-g")
set(CMAKE_CXX_FLAGS_MINSIZEREL_INIT     "-Os -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE_INIT        "-O3 -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO_INIT "-O2 -g")

add_executable(executable "main.cpp")

