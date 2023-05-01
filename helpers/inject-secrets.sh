#!/bin/bash

# Set the root directory path
root_dir="/home/dustin/dev/nixos"

# Find all files ending with ".tpl" in the root directory and its subdirectories
find "$root_dir" -type f -name "*.tpl" | while read file; do
    # Get the name of the output file
    output=$(echo "$file" | sed 's/\.tpl$//')

    # Run the inject command on the input and output files
    op inject -i "$file" -o "$output"

    # Check if the inject command succeeded
    if [ $? -eq 0 ]; then
        echo "Created $output"

        # Check if the .gitignore file exists in the root directory
        if [ -f "$root_dir/.gitignore" ]; then
            # Append the output file (relative to root dir) to the .gitignore file
            echo "$(basename "$output")" >> "$root_dir/.gitignore"
            echo "Added $(basename "$output") to .gitignore"
        fi
    else
        echo "Error creating $output"
    fi
done
