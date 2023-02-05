rm -rf build
mkdir -p build
cd build

## If you want to modify compiler options..
## The following command will compile the project(1), deactivating exceptions(2) and RTTI(3) (RunTime Type Identification)
cmake -D CMAKE_CXX_FLAGS="-fno-exceptions -fno-rtti" .. 

## You can discover compile flags which are actually used by a CMake project (VERBOSE=1)
cmake --build . -- VERBOSE=1

