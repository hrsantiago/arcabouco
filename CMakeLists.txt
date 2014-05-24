cmake_minimum_required(VERSION 2.8)
project(autotest)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake ${CMAKE_MODULE_PATH})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

# default build type
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()
message(STATUS "Build type: " ${CMAKE_BUILD_TYPE})

set(CMAKE_CXX_FLAGS                "${CMAKE_CXX_FLAGS} -std=c99 -pipe ${WARNS_FLAGS}")
set(CMAKE_CXX_FLAGS_FULLDEBUG      "-O0 -g")
set(CMAKE_CXX_FLAGS_DEBUG          "-O1 -g -fno-optimize-sibling-calls -DDEBUG")
set(CMAKE_CXX_FLAGS_MINSIZEREL     "-Wno-error -Os")
set(CMAKE_CXX_FLAGS_RELEASE        "-Wno-error -O4 -ffast-math")

include_directories(${CMAKE_CURRENT_LIST_DIR}/tables)
include_directories(${CMAKE_CURRENT_LIST_DIR}/include/autotest)

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

  include/autotest/cespdin.h
  include/autotest/conta.h
  include/autotest/generico.h
  include/autotest/geraalt.h
  include/autotest/intrpced.h
  include/autotest/intrpcnt.h
  include/autotest/lerparm.h
  include/autotest/tabsimb.h
  include/autotest/tst_espc.h

  tables/idtiposespaco.def
)

add_library(${PROJECT_NAME} SHARED ${SOURCES})

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION lib LIBRARY DESTINATION lib)
install(DIRECTORY include/autotest DESTINATION include)

#build examples
#add_subdirectory(examples)
