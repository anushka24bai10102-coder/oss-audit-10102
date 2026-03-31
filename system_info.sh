#!/bin/bash
# Script 1: System Identity Report
# Author: Anushka Pundir

STUDENT_NAME="Anushka Pundir"
SOFTWARE_CHOICE="Git"

# Collect system details
KERNEL_VERSION=$(uname -r)
CURRENT_USER=$(whoami)
SYSTEM_UPTIME=$(uptime -p)
DISTRO_NAME=$(lsb_release -d | cut -f2)
CURRENT_DATE=$(date)

echo "===================================="
echo " Open Source Audit Report"
echo " Student: $STUDENT_NAME"
echo "===================================="
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Kernel Version  : $KERNEL_VERSION"
echo "Logged User     : $CURRENT_USER"
echo "System Uptime   : $SYSTEM_UPTIME"
echo "Distribution    : $DISTRO_NAME"
echo "Current Date    : $CURRENT_DATE"
echo "License Info    : Linux uses GPL license"
