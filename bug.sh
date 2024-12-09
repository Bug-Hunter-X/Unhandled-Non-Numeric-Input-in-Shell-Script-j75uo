#!/bin/bash

# This script attempts to process a file containing numbers,
# but it has a subtle error handling issue.

input_file="numbers.txt"

# Check if the file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file '$input_file' not found."
exit 1
fi

# Process each line in the file
while IFS= read -r line; do
  # Attempt to perform an arithmetic operation
  result=$((line * 2))
  echo "Result: $result"
done < "$input_file"