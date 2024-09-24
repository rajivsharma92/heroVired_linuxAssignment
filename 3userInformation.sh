#!/bin/bash
# Script to display user information

echo "Username: $(whoami)"
echo "User ID: $(id -u)"
echo "Group ID: $(id -g)"
echo "Home Directory: $HOME"
echo "Shell: $SHELL"
