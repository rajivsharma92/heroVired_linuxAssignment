#!/bin/bash

# Script to analyze a text file and display the number of lines, 
# words, and characters

if [ -z "$1" ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

echo "File: $1"
echo "Lines: $(wc -l < "$1")"
echo "Words: $(wc -w < "$1")"
echo "Characters: $(wc -m < "$1")"
