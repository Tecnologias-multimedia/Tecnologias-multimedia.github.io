#!/bin/bash

# Change to the current directory
cd "$(dirname "$0")"

# Iterate over each subdirectory
for folder in */; do
    if [ -d "$folder" ]; then
        # Change into the subdirectory and run the command
        echo "Entering $folder"
        cd "$folder"
        
        # Run your command here
        # Example command: ls
        make

        # Return to the parent directory
        cd ..
    fi
done
