#!/bin/bash
# Script to check file permissions

if [ ! -f "$1" ]; then
  echo "File not found!"
  exit 1
fi

if [ -r "$1" ]; then
  echo "File has read permission."
else
  echo "File does not have read permission."
fi

if [ -w "$1" ]; then
  echo "File has write permission."
else
  echo "File does not have write permission."
fi

if [ -x "$1" ]; then
  echo "File has execute permission."
else
  echo "File does not have execute permission."
fi
