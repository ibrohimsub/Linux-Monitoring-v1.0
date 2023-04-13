#!/bin/bash

print_top_folders() {
  local n="$1"

  # Use du command to get the size of each folder and sort by size in descending order
  # Limit the output to the top N folders and only display the path and size
  local top_folders=$(du -hd1 "$dir" | sort -rh | head -n "$n" | awk '{print NR " - " $2 ", " $1}')

  # Print the top folders
  echo "TOP $n folders of maximum size arranged in descending order (path and size):"
  echo "$top_folders"
}
