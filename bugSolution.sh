#!/bin/bash

# Improved script with error handling for non-numeric input

input_file="numbers.txt"

# Check if the file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file '$input_file' not found."
exit 1
fi

# Process each line in the file
while IFS= read -r line; do
  # Check if the line is a number
  if [[ ! "$line" =~ ^-?[0-9]+$ ]]; then
    echo "Warning: Non-numeric input '$line' encountered. Skipping."
    continue
  fi
  # Perform arithmetic operation
  result=$((line * 2))
  echo "Result: $result"
done < "$input_file"