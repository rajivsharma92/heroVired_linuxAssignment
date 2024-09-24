#!/bin/bash
# Script to check if a process is running and start it if not

PROCESS="apache2"
LOG_FILE="/var/log/process_monitor.log"

if pgrep "$PROCESS" > /dev/null; then
  echo "$PROCESS is running."
else
  echo "$PROCESS is not running. Starting $PROCESS." | tee -a "$LOG_FILE"
  service "$PROCESS" start
fi
