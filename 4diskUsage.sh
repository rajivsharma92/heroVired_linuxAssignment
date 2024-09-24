#!/bin/bash
# Script to check disk usage and send an alert if above 80%

# Get the disk usage percentage
DISK_USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ "$DISK_USAGE" -gt 80 ]; then
  echo "Disk usage is above 80%. Current usage is $DISK_USAGE%." | mail -s "Disk Usage Alert" admin@example.com
else
  echo "Disk usage is under control at $DISK_USAGE%."
fi
