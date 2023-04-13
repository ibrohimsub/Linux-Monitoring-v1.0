#!/bin/bash

echo "Total number of folders (including all nested ones) = $folders"
print_top_folders 5
echo "Total number of files = $total_files"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $conf_files"
echo "Text files = $text_files"
echo "Executable files = $exe_files"
echo "Log files (with the extension .log) = $log_files"
echo "Archive files = $archive_files"
echo "Symbolic links = $symlink_files"
print_top_files 10
print_top_executables 10
