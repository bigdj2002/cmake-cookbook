rm -rf build
mkdir -p build
cd build

## CMAKE_BUILD_TYPE: Defining the build type
cmake -D CMAKE_BUILD_TYPE=Debug ..
cmake --build .