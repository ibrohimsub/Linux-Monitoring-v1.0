#!/bin/bash

# Set color variables
case ${column1_background:-$column1_b} in
  1) bg1='\033[47m';;
  2) bg1='\033[41m';;
  3) bg1='\033[42m';;
  4) bg1='\033[44m';;
  5) bg1='\033[45m';;
  6) bg1='\033[40m';;
esac
case ${column1_font_color:-$column1_f} in
  1) fg1='\033[37m';;
  2) fg1='\033[31m';;
  3) fg1='\033[32m';;
  4) fg1='\033[34m';;
  5) fg1='\033[35m';;
  6) fg1='\033[30m';;
esac
case ${column2_background:-$column2_b} in
  1) bg2='\033[47m';;
  2) bg2='\033[41m';;
  3) bg2='\033[42m';;
  4) bg2='\033[44m';;
  5) bg2='\033[45m';;
  6) bg2='\033[40m';;
esac
case ${column2_font_color:-$column2_f} in
  1) fg2='\033[37m';;
  2) fg2='\033[31m';;
  3) fg2='\033[32m';;
  4) fg2='\033[34m';;
  5) fg2='\033[35m';;
  6) fg2='\033[30m';;
esac

nc='\033[0m'
