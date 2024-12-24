#!/bin/bash

# This script demonstrates the corrected approach to processing files.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

# Create a copy of the files array to iterate over
file_copy=(${files[@]})

for file in "${file_copy[@]}"; do
  if [ -f "$file" ]; then
    echo "Processing: $file"
    cat "$file"
  else
    echo "Error: File '$file' not found"
  fi
  sleep 1
  # Add new file without disturbing the loop
  files+=("/tmp/newfile.txt")
done