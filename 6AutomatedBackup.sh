#!/bin/bash
# Script to compress and backup /home/user/documents directory

# Define directories
SOURCE_DIR="/home/user/documents"
BACKUP_DIR="/home/user/backup"
BACKUP_FILE="$BACKUP_DIR/documents_backup.tar.gz"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Compress the directory and move the backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

echo "Backup completed: $BACKUP_FILE"

#For crone job use the below commands in cli

# crontab -e
# 0 2 * * * /path/to/backup_script.sh

