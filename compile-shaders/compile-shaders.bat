@echo off
rem My old script for some project (until I learn CMake)
rem !!! This script works only from current directory !!!
rem It compiles source shaders code into resource folder directly
rem !!! Add your own shaders before launch it !!!
rem made by vertoker

setlocal
cd /d %~dp0
rem cd ..

set RESOURCES_INPUT=%cd%\src\shaders\
set RESOURCES_OUTPUT=%cd%\resources\ShaderCache\

@echo on

md %RESOURCES_OUTPUT%

glslc %RESOURCES_INPUT%world.vert -o %RESOURCES_OUTPUT%world.vert.spv
glslc %RESOURCES_INPUT%world.frag -o %RESOURCES_OUTPUT%world.frag.spv
glslc %RESOURCES_INPUT%point_light.vert -o %RESOURCES_OUTPUT%point_light.vert.spv
glslc %RESOURCES_INPUT%point_light.frag -o %RESOURCES_OUTPUT%point_light.frag.spv