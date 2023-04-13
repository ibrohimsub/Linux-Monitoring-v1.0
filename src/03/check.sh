#!/bin/bash

# Check number of parameters
if [ $# -ne 4 ]; then
  echo "Usage: $0 <bg1> <fg1> <bg2> <fg2>"
  echo "bg1: background color of value names"
  echo "fg1: font color of value names"
  echo "bg2: background color of values"
  echo "fg2: font color of values"
  exit 1
fi

# Assign parameter values
bg1=$1
fg1=$2
bg2=$3
fg2=$4

# Check that colors are different
if [ "$bg1" = "$fg1" ] || [ "$bg2" = "$fg2" ]; then
  echo "Error: font and background colors of one column must not match."
  echo "Please call the script again with different parameters."
  exit 1
fi
