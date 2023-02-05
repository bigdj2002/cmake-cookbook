# set minimum cmake version
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

# project name and language
project(recipe-09 LANGUAGES CXX)

set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

add_library(animals
  SHARED
    Animal.cpp
    Animal.hpp
    Cat.cpp
    Cat.hpp
    Dog.cpp
    Dog.hpp
    Factory.hpp
  )

## "CXX_STANDARD" mandates the standard that we would like to have
## "CXX_EXTENSIONS" tells CMake to only use compiler flags that will enable the ISO C++ standard without compiler-specific extensions
## "CXX_STANDARD_REQUIRED" specifies that the version of the standard chosen is required
## "POSITION_INDEPENDENT_CODE" specifies property to avoid issues when building the DSO with some compilers

set_target_properties(animals
  PROPERTIES
    CXX_STANDARD 14
    CXX_EXTENSIONS OFF
    CXX_STANDARD_REQUIRED ON
    POSITION_INDEPENDENT_CODE 1
  )

add_executable(animal-farm animal-farm.cpp)

set_target_properties(animal-farm
  PROPERTIES
    CXX_STANDARD 14
    CXX_EXTENSIONS OFF
    CXX_STANDARD_REQUIRED ON
  )

target_link_libraries(animal-farm animals)
