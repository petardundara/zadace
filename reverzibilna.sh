#!/bin/bash

# Get the name of the source file
source_file="$0"

# Extract the filename without the path
source_filename=$(basename "$source_file")

# Reverse the filename
reversed_filename=$(echo "$source_filename" | rev)

# Create the target file with the reversed filename
target_file="$reversed_filename"

# Reverse the content of the source script and save it to the target file
reverse_content() {
    while IFS= read -r line; do
        reversed_line=$(echo "$line" | rev)
        echo "$reversed_line" >> "$target_file"
    done < "$source_file"
}

# Check if the target file already exists and prompt for confirmation before overwriting
if [ -e "$target_file" ]; then
    read -p "The target file '$target_file' already exists. Overwrite it? (y/n): " overwrite
    if [ "$overwrite" != "y" ]; then
        echo "Operation canceled."
        exit 1
    fi
fi

# Call the function to reverse and save the script
reverse_content

# Make the target file executable
chmod +x "$target_file"

echo "Script has been reversed and saved to '$target_file'."

