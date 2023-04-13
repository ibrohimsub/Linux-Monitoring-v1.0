#!/bin/bash

# Start measuring script execution time
START=`date +%s.%N`

# Cheking parameter
source check.sh

# Define function to get file type based on its extension
source get_file_type.sh

# Define function to print the top N folders by size
source print_top_folders.sh

# Define function to print the top N files by size and type
source print_top_files.sh

# Define function to print the top N executable files by size and hash
source print_top_executables.sh

# Count commands
source count.sh

# Output commands
source output.sh

# Finish measuring script execution time
END=`date +%s.%N`
RUNTIME=$( echo "$END - $START" | bc -l)
printf "Script execution time (in seconds) = %.1f\n" $RUNTIME
