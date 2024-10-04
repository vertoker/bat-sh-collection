
cmake_minimum_required(VERSION 3.12)
project(vcpkg-test)

add_executable(vcpkg-test main.cpp)

find_package(fmt CONFIG REQUIRED)
target_link_libraries(vcpkg-test PRIVATE fmt::fmt)

