#!/bin/bash
# Script 1 - System Identity Report
# Name: [Your Name] | Reg: [Your Reg No]
# Course: Open Source Software

# storing my details in variables
STUDENT_NAME="[Your Name]"
SOFTWARE="MySQL"

# command substitution to grab live system info
KERNEL=$(uname -r)
DISTRO=$(lsb_release -d | cut -f2)
LOGGED_IN=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

echo "=================================="
echo "  System Info - OSS Audit"
echo "=================================="
echo "Student   : $STUDENT_NAME"
echo "Software  : $SOFTWARE"
echo ""
echo "Distro    : $DISTRO"
echo "Kernel    : $KERNEL"
echo "User      : $LOGGED_IN"
echo "Home      : $HOME"
echo "Uptime    : $UPTIME"
echo "Date/Time : $DATE"
echo ""
echo "----------------------------------"
echo "This system runs Linux, licensed"
echo "under GPL v2. Free to use, study,"
echo "modify and share."
echo "=================================="
