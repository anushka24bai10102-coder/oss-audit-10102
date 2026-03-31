#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Let's create your Open Source Manifesto"
echo "--------------------------------------"

read -p "Enter a tool you use daily: " TOOL
read -p "What does 'freedom' mean to you? " FREEDOM
read -p "What will you create and share? " BUILD

TODAY=$(date '+%d %B %Y')
OUTPUT_FILE="my_manifesto.txt"

echo "Date: $TODAY" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "I believe open source stands for $FREEDOM." >> "$OUTPUT_FILE"
echo "I regularly use $TOOL and it helps me in my work." >> "$OUTPUT_FILE"
echo "In future, I aim to build $BUILD and share it with others." >> "$OUTPUT_FILE"

echo ""
echo "Manifesto saved in $OUTPUT_FILE"
cat "$OUTPUT_FILE"
