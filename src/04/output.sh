#!/bin/bash

# Display system information
echo -e "${bg1}${fg1}HOSTNAME${nc} = ${bg2}${fg2}${HOSTNAME}${nc}"
echo -e "${bg1}${fg1}TIMEZONE${nc} = ${bg2}${fg2}${TIMEZONE}${nc}"
echo -e "${bg1}${fg1}USER${nc} = ${bg2}${fg2}${USER}${nc}"
echo -e "${bg1}${fg1}OS${nc} = ${bg2}${fg2}${OS}${nc}"
echo -e "${bg1}${fg1}DATE${nc} = ${bg2}${fg2}${DATE}${nc}"
echo -e "${bg1}${fg1}UPTIME${nc} = ${bg2}${fg2}${UPTIME}${nc}"
echo -e "${bg1}${fg1}UPTIME_SEC${nc} = ${bg2}${fg2}${UPTIME_SEC}${nc}"
echo -e "${bg1}${fg1}IP${nc} = ${bg2}${fg2}${IP}${nc}"
echo -e "${bg1}${fg1}MASK${nc} = ${bg2}${fg2}${MASK}${nc}"
echo -e "${bg1}${fg1}GATEWAY${nc} = ${bg2}${fg2}${GATEWAY}${nc}"
echo -e "${bg1}${fg1}RAM_TOTAL${nc} = ${bg2}${fg2}$(printf "%.3f" $RAM_TOTAL) GB${nc}"
echo -e "${bg1}${fg1}RAM_USED${nc} = ${bg2}${fg2}$(printf "%.3f" $RAM_USED) GB${nc}"
echo -e "${bg1}${fg1}RAM_FREE${nc} = ${bg2}${fg2}$(printf "%.3f" $RAM_FREE) GB${nc}"
echo -e "${bg1}${fg1}SPACE_ROOT${nc} = ${bg2}${fg2}$(printf "%.2f" $SPACE_ROOT) MB${nc}"
echo -e "${bg1}${fg1}SPACE_ROOT_USED${nc} = ${bg2}${fg2}$(printf "%.2f" $SPACE_ROOT_USED) MB${nc}"
echo -e "${bg1}${fg1}SPACE_ROOT_FREE${nc} = ${bg2}${fg2}$(printf "%.2f" $SPACE_ROOT_FREE) MB${nc}"

# Display color scheme
echo -e "\nColumn 1 background = ${column1_background:-default} ($(get_color_name ${column1_background:-$column1_b}))"
echo -e "Column 1 font color = ${column1_font_color:-default} ($(get_color_name ${column1_font_color:-$column1_f}))"
echo -e "Column 2 background = ${column2_background:-default} ($(get_color_name ${column2_background:-$column2_b}))"
echo -e "Column 2 font color = ${column2_font_color:-default} ($(get_color_name ${column2_font_color:-$column2_f}))"
