rm -rf build

# Configure the project
mkdir -p build
cd build
cmake -D USE_LIBRARY=ON ..

# Compile the executable
cmake --build .

# Execute executable file
./hello-world