#!/bin/bash
# Define the directory containing the files
INPUT_DIR="./touchstone"

# Define the directory where output files will be saved
OUTPUT_DIR="./touchstone"

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

    # Run your command/script on the file and redirect its output to the output file
    NO_COLOR=1 node ../UIST2025/touchstone-language/src/run_generator.js 12  "$file" > "$output_file"
  fi
done