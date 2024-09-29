#!/bin/bash

# Check if the source directory is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <source_directory> <output_markdown_file>"
    exit 1
fi

# Check if the output file is provided
if [ -z "$2" ]; then
    echo "Usage: $0 <source_directory> <output_markdown_file>"
    exit 1
fi

# Assign the arguments to variables
SOURCE_DIR="$1"
OUTPUT_FILE="$2"

# Create or clear the output file
echo "# Lab Experiments by Mantej Singh" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "## Table of Contents" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Generate the list of sorted .cpp files that match "p*.cpp" format
CPP_FILES=$(find "$SOURCE_DIR" -maxdepth 1 -type f -name "p*.cpp" | sort -V)

# Check if any files were found
if [ -z "$CPP_FILES" ]; then
    echo "No .cpp files found with the pattern 'p*.cpp' in $SOURCE_DIR"
    exit 1
fi

# Initialize an index counter for the Table of Contents
INDEX=1

# Loop through each .cpp file, extract its name, and add it to the markdown file
for FILE in $CPP_FILES; do
    # Extract the program number from the file name (e.g., p9.cpp becomes 9)
    PROGRAM_NUMBER=$(basename "$FILE" | grep -oP '\d+')

    # Add an entry in the Table of Contents
    echo "$INDEX. [Program $PROGRAM_NUMBER](#program-$PROGRAM_NUMBER)" >> "$OUTPUT_FILE"

    # Increment the index for the next program
    INDEX=$((INDEX+1))
done

echo "" >> "$OUTPUT_FILE"

# Reset the index for actual content generation
INDEX=1

# Loop again through the sorted .cpp files to add their content with headers
for FILE in $CPP_FILES; do
    # Extract the program number again
    PROGRAM_NUMBER=$(basename "$FILE" | grep -oP '\d+')

    # Add the program header (h2 heading)
    echo "## Program $PROGRAM_NUMBER" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    echo "\`\`\`cpp" >> "$OUTPUT_FILE"

    # Append the content of the .cpp file
    cat "$FILE" >> "$OUTPUT_FILE"

    echo "\`\`\`" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"

    # Increment the index
    INDEX=$((INDEX+1))
done

# Success message
echo "Markdown file generated successfully: $OUTPUT_FILE"
