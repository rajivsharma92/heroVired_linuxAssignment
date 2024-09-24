#!/bin/bash
# Script to generate a system information report

REPORT_FILE="system_report.txt"

echo "System Uptime: $(uptime -p)" > "$REPORT_FILE"
echo "Memory Usage: $(free -h)" >> "$REPORT_FILE"
echo "CPU Load: $(uptime | awk -F'load average:' '{ print $2 }')" >> "$REPORT_FILE"
echo "Disk Usage: $(df -h /)" >> "$REPORT_FILE"
echo "Running Processes: $(ps aux | wc -l)" >> "$REPORT_FILE"

echo "System information report saved to $REPORT_FILE."
