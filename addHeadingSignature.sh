#!/bin/bash

# Check if the correct number of arguments are provided
if [ $# -lt 3 ]; then
    echo "Usage: $0 <source_directory> <questionnaire_file> <roll_number>"
    exit 1
fi

# Assign arguments to variables
SOURCE_DIR="$1"
QUESTIONNAIRE_FILE="$2"
ROLL_NUMBER="$3"

# Check if the questionnaire file exists
if [ ! -f "$QUESTIONNAIRE_FILE" ]; then
    echo "Error: Questionnaire file not found!"
    exit 1
fi

# Find all files matching the pattern "p*.cpp" in the source directory
CPP_FILES=$(find "$SOURCE_DIR" -maxdepth 1 -type f -name "p*.cpp")

# Loop through each .cpp file
for FILE in $CPP_FILES; do
    # Extract the program number from the file name (e.g., p5.cpp becomes 5)
    PROGRAM_NUMBER=$(basename "$FILE" | grep -oP '\d+')

    # Extract the corresponding question from the questionnaire file
    QUESTION=$(grep "^$PROGRAM_NUMBER\." "$QUESTIONNAIRE_FILE")

    # Add the question statement at the top of the file if it exists
    if [ ! -z "$QUESTION" ]; then
        echo "/* $QUESTION */" | cat - "$FILE" > temp && mv temp "$FILE"
    fi

    # Check if the main function exists in the file
    if grep -q "int main" "$FILE"; then
        # Insert roll number before "return 0;" if it exists
        if grep -q "return 0;" "$FILE"; then
            sed -i "/return 0;/i \    cout << \"\\n\\nRoll Number: \" << \"$ROLL_NUMBER\";" "$FILE"
        else
            # If no "return 0;", find the closing bracket of the main function
            sed -i '/int main/,/^}/ {/^}/ i \    cout << "\n\nRoll Number: " << "'$ROLL_NUMBER'";' "$FILE"
        fi
    fi
done

echo "Modifications completed for all p*.cpp files."
