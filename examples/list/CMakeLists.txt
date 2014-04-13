cmake_minimum_required(VERSION 2.8)
project(example_list)

set(SOURCES
    src/lista.c
    src/lista.h
    src/testlis.c
)

add_executable(${PROJECT_NAME} ${SOURCES})
target_link_libraries(${PROJECT_NAME} ${CMAKE_BINARY_DIR}/lib/libautotest.so)
