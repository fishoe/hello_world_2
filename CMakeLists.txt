cmake_minimum_required(VERSION 3.29)
project(hello_world_2 C)

set(CMAKE_C_STANDARD 23)

add_executable(hello_world_2
        src/main.c
        src/lib.c)
