#!/bin/bash

# Default color scheme
column1_background_def=2
column1_font_color_def=4
column2_background_def=5
column2_font_color_def=1

# Load configuration file
if [ -f "colors.conf" ]; then
  source colors.conf
fi
