#!/bin/bash

if [[ ! "$1" ]]; then
  echo "Error: no input provided."
  exit 1
fi

if [[ "$1" =~ ^[0-9]+$ ]]; then
  echo "Error: invalid input. Parameter cannot be a number."
  exit 1
fi

echo "Parameter value: $1"
