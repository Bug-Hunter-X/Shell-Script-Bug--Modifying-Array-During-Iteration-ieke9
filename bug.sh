#!/bin/bash

# This script attempts to process a list of files, but it has a subtle bug.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    echo "Processing: $file"
    # Process the file (e.g., using cat)
    cat "$file"
  else
    echo "Error: File '$file' not found"
  fi
  # Introduce a delay for demonstration purposes
  sleep 1
  # This is where the bug occurs. The files array is modified in the loop
  # which breaks the iteration.
  files+=("/tmp/newfile.txt")

done