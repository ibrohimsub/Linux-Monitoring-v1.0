#!/bin/bash

get_file_type() {
  local ext="${1##*.}"
  case "$ext" in
    conf) echo "conf" ;;
    journal) echo "journal" ;;
    txt|md) echo "txt" ;;
    sh|exe) echo "exe" ;;
    log) echo "log" ;;
    zip|tar|gz|bz2|xz) echo "archive" ;;
    *) echo "unknown" ;;
  esac
}
