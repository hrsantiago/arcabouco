cmake_minimum_required(VERSION 2.8)
project(example_list)

set(SOURCES
    src/lista.c
    src/lista.h
    src/testlis.c
)

add_executable(example_list ${SOURCES})
target_link_libraries(example_list ${CMAKE_BINARY_DIR}/lib/libautotest.so)
