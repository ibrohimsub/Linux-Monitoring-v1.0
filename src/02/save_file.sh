#!/bin/bash

# Ask user if they want to save the information to a file
read -p "Do you want to save this information to a file? (Y/N)" save_file
if [[ "$save_file" == "Y" || "$save_file" == "y" ]]; then
  # Create filename with current timestamp
  timestamp=$(date "+%d_%m_%y_%H_%M_%S")
  filename="${timestamp}.status"

  # Write information to file
  {
    echo "HOSTNAME = $HOSTNAME"
    echo "TIMEZONE = $TIMEZONE"
    echo "USER = $USER"
    echo "OS = $OS"
    echo "DATE = $DATE"
    echo "UPTIME = $UPTIME"
    echo "UPTIME_SEC = $UPTIME_SEC"
    echo "IP = $IP"
    echo "MASK = $MASK"
    echo "GATEWAY = $GATEWAY"
    echo "RAM_TOTAL = $(printf "%.3f" $RAM_TOTAL) GB"
    echo "RAM_USED = $(printf "%.3f" $RAM_USED) GB"
    echo "RAM_FREE = $(printf "%.3f" $RAM_FREE) GB"
    echo "SPACE_ROOT = $(printf "%.2f" $SPACE_ROOT) MB"
    echo "SPACE_ROOT_USED = $(printf "%.2f" $SPACE_ROOT_USED) MB"
    echo "SPACE_ROOT_FREE = $(printf "%.2f" $SPACE_ROOT_FREE) MB"
  } > "$filename"
fi
