#!/bin/bash

print_top_executables() {
    num=1
  local n="$1"
  echo "TOP $n executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
  find "${dir}" -type f -perm /111 -printf '%s %p\n' | sort -hr | head -n "$n" | while read -r size path; do
    md5=$(md5sum "$path" | cut -d' ' -f1)
    echo "$num - $path, $(numfmt --to=iec-i --suffix=B "$size"), $md5"
    let "num = num + 1"
  done
}
