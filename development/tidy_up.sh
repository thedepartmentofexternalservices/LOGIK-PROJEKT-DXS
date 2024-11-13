#!/bin/bash

# Define the target directory
TARGET_DIRECTORY="/PROJEKTS/24033_kfc_sizzle/editorial/adobe_premiere"

# Function to remove directories with a suffix of .bak
remove_bak_dirs() {
    find "$TARGET_DIRECTORY" -type d -name "*.bak" -print -exec rm -r {} +
    if [ $? -eq 0 ]; then
        echo "Directories with suffix '.bak' have been removed from $TARGET_DIRECTORY"
    else
        echo "An error occurred while trying to remove directories with suffix '.bak'"
        exit 1
    fi
}

# Function to remove files named placeholder
remove_placeholder_files() {
    find "$TARGET_DIRECTORY" -type f -name "placeholder" -print -exec rm {} +
    if [ $? -eq 0 ]; then
        echo "Files named 'placeholder' have been removed from $TARGET_DIRECTORY"
    else
        echo "An error occurred while trying to remove files named 'placeholder'"
        exit 1
    fi
}

# Run the functions
remove_bak_dirs
remove_placeholder_files

echo "Cleanup complete!"
