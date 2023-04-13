#!/bin/bash

if [[ -z $column1_background ]] || (( $column1_background < 1 )) || (( $column1_background > 6 )); then
  column1_b=$column1_background_def
  unset column1_background
fi

if [[ -z $column1_font_color ]] || (( $column1_font_color < 1 )) || (( $column1_font_color > 6 )); then
  column1_f=$column1_font_color_def
  unset column1_font_color
fi

if [[ -z $column2_background ]] || (( $column2_background < 1 )) || (( $column2_background > 6 )); then
  column2_b=$column2_background_def
  unset column2_background
fi

if [[ -z $column2_font_color ]] || (( $column2_font_color < 1 )) || (( $column2_font_color > 6 )); then
  column2_f=$column2_font_color_def
  unset column2_font_color
fi
