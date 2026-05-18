#!/bin/bash
# Define the directory containing the files
INPUT_DIR="./planet"

# Define the directory where output files will be saved
OUTPUT_DIR="./planet/outputs"

rm -f "$OUTPUT_DIR"/*.out

# Loop through each file in the input directory
for file in "$INPUT_DIR"/*; do
  filename=$(basename "$file")
  echo $(basename "$file")
  # Check if it's a regular file (to avoid processing subdirectories if any)
  if [ -f "$file" ]; then
    # Extract the filename without the path
    filename=$(basename "$file")

    # Define the output file path
    output_file="$OUTPUT_DIR/${filename}.out" # You can adjust the extension

    start_time=$(date +%s%N)
    # Run your command/script on the file and redirect its output to the output file
    /Users/londonbielicke/Documents/projects/ucla/PLanet/experimental-design-dsl/venv/bin/python3.11  "$file" > "$output_file"
    end_time=$(date +%s%N)
    duration_ns=$((end_time - start_time))
    duration_ms=$((duration_ns / 1000000))
    echo "program executed in $duration_ms miliseconds."
  fi
done