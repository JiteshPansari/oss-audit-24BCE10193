#!/bin/bash
# Script 1: System Identity Report
# Author: Jitesh Pansari | Roll No: 24BCE10193
# Course: Open Source Software
# This script automatically gathers and displays Linux system details.

# --- Variables ---
# We store your details here for the display
STUDENT_NAME="Jitesh Pansari"
SOFTWARE_CHOICE="VLC Media Player"

# --- System info ---
# $(command) is command substitution; it runs a Linux command and saves the result
DISTRO=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d'"' -f2)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

# --- Display ---
# These lines print the gathered information to the screen
echo "=========================================="
echo " Open Source Audit - $STUDENT_NAME"
echo "=========================================="
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Linux Distro    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $CURRENT_DATE"
echo "------------------------------------------"
echo "License: This OS is covered by the GNU General Public License (GPL)."
echo "=========================================="
