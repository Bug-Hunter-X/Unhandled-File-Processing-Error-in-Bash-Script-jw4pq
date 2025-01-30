#!/bin/bash

# Improved script with proper error handling

file_to_process="my_file.txt"

# Function to process the file with error handling
process_file() {
  # Check if the file exists and is a regular file
  if [[ -f "$file_to_process" ]]; then
    # Process the file
    cat "$file_to_process" > /dev/null 2>&1
    echo "File processed successfully."
  else
    echo "Error: File '$file_to_process' not found or not a regular file."
    exit 1
  fi
}

# Call the function to process the file
process_file

exit 0