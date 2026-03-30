#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Jitesh Pansari | 24BCE10193
# This script generates a personalized statement and saves it to a file.

echo "--- Jitesh's Open Source Manifesto Generator ---"

# Requirement: Use 'read' for user input [cite: 188, 193]
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Requirement: Use date command and dynamic filename [cite: 188, 197, 198]
DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Requirement: Compose a paragraph and write to file with > and >> [cite: 188, 199, 200]
echo "On $DATE, Jitesh Pansari (24BCE10193) declares:" > $OUTPUT
echo "I use $TOOL because it represents $FREEDOM. I promise to build $BUILD and share it with the world." >> $OUTPUT

# Requirement: Display the saved file [cite: 202]
echo "Success! Your manifesto has been saved to $OUTPUT:"
cat $OUTPUT
