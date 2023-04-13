#!/bin/bash

get_color_name() {
  case "$1" in
    1) echo "white";;
    2) echo "red";;
    3) echo "green";;
    4) echo "blue";;
    5) echo "purple";;
    6) echo "black";;
  esac
}
