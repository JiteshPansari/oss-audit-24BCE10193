#!/bin/bash
# Script 4: Log File Analyzer
# Author: Jitesh Pansari | 24BCE10193
# This script reads a log file and counts specific keywords.

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Requirement: Check if file exists [cite: 174]
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Requirement: Do-while style retry if the file is empty 
while [ ! -s "$LOGFILE" ]; do
    echo "File is empty. Waiting 5 seconds for data..."
    sleep 5
done

echo "Analyzing $LOGFILE for keyword: $KEYWORD..."

# Requirement: While-read loop to count lines [cite: 165]
while read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times."
echo "--- Last 5 matching lines ---"
# Requirement: Print last 5 matching lines using tail + grep 
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
