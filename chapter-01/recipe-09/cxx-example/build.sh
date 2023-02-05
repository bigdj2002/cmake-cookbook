rm -rf build
mkdir -p build
cd build

cmake ..
cmake --build .

# Execute executable file
./animal-farm