#!/bin/bash

print_top_files() {
    num=1
  local n="$1"
  echo "TOP $n files of maximum size arranged in descending order (path, size and type):"
  find "${dir}" -type f -printf '%s %p\n' | sort -hr | head -n "$n" | while read -r size path; do
    type=$(get_file_type "$path")
    echo "$num - $path, $(numfmt --to=iec-i --suffix=B "$size"), $type"
    let "num = num + 1"
  done
}
