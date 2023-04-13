#!/bin/bash

# Count the number of folders (including nested ones)
folders=$(find "${dir}" -type d | wc -l)

# Count the number of files of different types
total_files=$(find "$dir" -type f | wc -l)
conf_files=$(find "$dir" -type f -name "*.conf" | wc -l)
text_files=$(find "$dir" -type f -name "*.txt" | wc -l)
exe_files=$(find "$dir" -type f -executable | wc -l)
log_files=$(find "$dir" -type f -name "*.log" | wc -l)
archive_files=$(find "$dir" -type f \( -name "*.zip" -o -name "*.tar" -o -name "*.gz" -o -name "*.bz2" \) | wc -l)
symlink_files=$(find "$dir" -type l | wc -l)
