rm -rf build
mkdir -p build
cd build

cmake ..
cmake --build . -- VERBOS=1