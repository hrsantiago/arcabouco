cmake_minimum_required(VERSION 2.8)
project(arcabouco)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/luna/cmake ${CMAKE_MODULE_PATH})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

# default build type
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug)
endif()
message(STATUS "Build type: " ${CMAKE_BUILD_TYPE})

set(CMAKE_CXX_FLAGS                "${CMAKE_CXX_FLAGS} -std=c++03 -pipe ${WARNS_FLAGS}")
set(CMAKE_CXX_FLAGS_FULLDEBUG      "-O0 -g")                                # compile with full debug information and no optimizations         (slow speed)
set(CMAKE_CXX_FLAGS_DEBUG          "-O1 -g -fno-optimize-sibling-calls -DDEBUG")    # compile with minimal optimization and perfect stacktrace support (fair speed)
set(CMAKE_CXX_FLAGS_MINSIZEREL     "-Wno-error -Os")                        # compile with good optimization and a little stacktrace support   (good speed)
set(CMAKE_CXX_FLAGS_RELEASE        "-Wno-error -O4 -ffast-math")            # compile with full optimization and without any debug information (good speed)

include_directories(${CMAKE_CURRENT_LIST_DIR}/tables)
include_directories(${CMAKE_CURRENT_LIST_DIR}/include)

set(SOURCES
  src/cespdin.c
  src/conta.c
  src/generico.c
  src/geraalt.c
  src/intrpced.c
  src/intrpcnt.c
  src/lerparm.c
  src/princip.c
  src/tabsimb.c

  include/cespdin.h
  include/conta.h
  include/generico.h
  include/geraalt.h
  include/intrpced.h
  include/intrpcnt.h
  include/lerparm.h
  include/tabsimb.h

  tables/idtiposespaco.def
)

add_library(arcabouco SHARED ${SOURCES})
