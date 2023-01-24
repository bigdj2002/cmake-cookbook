rm -rf build

# Configure the project by creating and stepping into a build directory
mkdir -p build
cd build
cmake ..

# Compile the executable
cmake --build .