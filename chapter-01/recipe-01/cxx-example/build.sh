rm -rf build

# Configure the project
mkdir -p build
cd build
cmake ..

# Compile the executable
cmake --build .