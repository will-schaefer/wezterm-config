#!/bin/bash
FILE=$1
echo "Testing $FILE..."
if [ ! -f "$FILE" ]; then
    echo "FAIL: $FILE does not exist."
    exit 1
fi

# Basic check for smart truncation settings
grep -q "truncation_length = 3" "$FILE" || { echo "FAIL: truncation_length = 3 not found"; exit 1; }
grep -q "truncate_to_repo = true" "$FILE" || { echo "FAIL: truncate_to_repo = true not found"; exit 1; }

echo "PASS: $FILE meets requirements."
exit 0
