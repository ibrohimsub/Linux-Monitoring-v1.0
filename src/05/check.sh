#!/bin/bash

# Check if a single parameter was provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 directory_path/"
  exit 1
fi

# Check if the directory exists
if [[ ! -d "$1" ]]; then
  echo "Error: The specified directory does not exist."
  exit 1
fi

# Ensure the directory parameter ends with '/'
dir="${1%/}/"
