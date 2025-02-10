#!/bin/bash

# Check if a filename was provided
if [ -z "$1" ]; then
    echo "Provide *.cpp file!"
    exit 1
fi

# Ensure the filename has a .cpp extension
filename="$1"
if [[ "$filename" != *.cpp ]]; then
    filename="$filename.cpp"
fi

# Check if the file already exists
if [ -e "$filename" ]; then
    echo "File '$filename' already exists!"
else
    # Write a basic C++ main function into the file
    cat > "$filename" <<EOL
#include <iostream>

int main() {
    std::cout << "Mer7ba!" << std::endl;
    return 0;
}
EOL
    echo "File created!"
fi


