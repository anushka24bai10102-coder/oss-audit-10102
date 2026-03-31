#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

echo "Checking package status..."

if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "✔ $PACKAGE is installed on this system."
    dpkg -l | grep "$PACKAGE" | awk '{print "Version:", $3}'
else
    echo "✘ $PACKAGE is NOT installed."
fi

# Description using case
case $PACKAGE in
    git) echo "Git: tool used to manage and track code changes efficiently" ;;
    apache2) echo "Apache: widely used open-source web server" ;;
    mysql) echo "MySQL: database used in many applications" ;;
    vlc) echo "VLC: open-source media player supporting many formats" ;;
    *) echo "No description available for this package" ;;
esac
