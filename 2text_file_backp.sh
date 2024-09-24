#!/bin/bash
# Script to backup all .txt files in a given directory

if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# Create a backup directory with a timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_DIR="$1/backup_$TIMESTAMP"
mkdir -p "$BACKUP_DIR"

# Copy all .txt files to the backup directory
find "$1" -maxdepth 1 -type f -name "*.txt" -exec cp {} "$BACKUP_DIR" \;

echo "Backup completed in $BACKUP_DIR"
