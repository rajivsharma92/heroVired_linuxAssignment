#!/bin/bash

# Define the base directory
BASE_DIR="/home/user"

# Create the main directories
mkdir -p "$BASE_DIR/projects/project1"
mkdir -p "$BASE_DIR/projects/project2"
mkdir -p "$BASE_DIR/projects/project3"
mkdir -p "$BASE_DIR/documents"
mkdir -p "$BASE_DIR/downloads"

# Notify user
echo "Directory structure created under $BASE_DIR:"
tree "$BASE_DIR"
