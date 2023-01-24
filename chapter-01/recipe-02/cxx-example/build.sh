rm -rf build

# Configure the project
mkdir -p build
cd build
cmake -G Ninja ..

# Compile the executable
cmake --build .