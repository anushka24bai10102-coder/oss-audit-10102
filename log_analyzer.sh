#!/bin/bash
# Script 4: Log File Analyzer

LOG_FILE=$1
KEYWORD=${2:-"error"}
MATCH_COUNT=0

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File does not exist!"
    exit 1
fi

echo "Analyzing log file: $LOG_FILE"
echo "Searching for keyword: $KEYWORD"

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        MATCH_COUNT=$((MATCH_COUNT + 1))
    fi
done < "$LOG_FILE"

echo "--------------------------------"
echo "Total matches found: $MATCH_COUNT"

echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOG_FILE" | tail -5
