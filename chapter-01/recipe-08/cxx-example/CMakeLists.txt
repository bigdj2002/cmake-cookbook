# set minimum cmake version
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

# project name and language
project(recipe-08 LANGUAGES CXX)

message("C++ compiler flags: ${CMAKE_CXX_FLAGS}")

list(APPEND flags "-fPIC" "-Wall")
if(NOT WIN32)
  list(APPEND flags "-Wextra" "-Wpedantic")
endif()

add_library(geometry
  STATIC
    geometry_circle.cpp
    geometry_circle.hpp
    geometry_polygon.cpp
    geometry_polygon.hpp
    geometry_rhombus.cpp
    geometry_rhombus.hpp
    geometry_square.cpp
    geometry_square.hpp
  )

target_compile_options(geometry
  ### The visibility levels ###
  # PRIVATE:   Only applied to the given target and not to other target consuming it
  # INTERFACE: Compile options on a given target will only be applied to targets consuming it
  # PIBULIC:   Compile options will be applied to the given target and all other target consuming it
  PRIVATE
    ${flags}
  )

add_executable(compute-areas compute-areas.cpp)

target_compile_options(compute-areas
  PRIVATE
    "-fPIC"
  )

target_link_libraries(compute-areas geometry)
