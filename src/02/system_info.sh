#!/bin/bash

# Retrieve system information
HOSTNAME=$(hostname)
TIMEZONE="$(cat /etc/timezone) $(date +"UTC %-:::z")"
USER=$(whoami)
OS=$(lsb_release -a 2> /dev/null | grep "Description" | awk '{print $2,$3,$4,$5}')
DATE=$(date "+%d %b %Y %T")
UPTIME=$(uptime -p | awk '{print $2" "$3" "$4" "$5" "$6}')
UPTIME_SEC=$(cat /proc/uptime | awk '{print int ($1)" seconds"}')
IP=$(hostname -I | awk '{print $1}')
MASK=$(ifconfig | grep -A0 "inet $IP" | tail -n 1 | awk '{print $4}')
GATEWAY=$(ip route | grep '^default' | awk '{print $3}')
RAM_TOTAL=$(free -m | awk '/^Mem:/{print ($2/1024)}')
RAM_USED=$(free -m | awk '/^Mem:/{print $3/1024}')
RAM_FREE=$(free -m | awk '/^Mem:/{print $4/1024}')
SPACE_ROOT=$(df -k / | awk '/^\/dev/{print $2/1024}')
SPACE_ROOT_USED=$(df -k / | awk '/^\/dev/{print $3/1024}')
SPACE_ROOT_FREE=$(df -k / | awk '/^\/dev/{print $4/1024}')

# Output information
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
