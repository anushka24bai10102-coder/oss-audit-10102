#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRECTORIES=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "===== Directory Audit ====="

for DIR in "${DIRECTORIES[@]}"; do
    if [ -d "$DIR" ]; then
        PERMISSION_INFO=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE_INFO=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "Directory: $DIR"
        echo "Permissions: $PERMISSION_INFO"
        echo "Size: $SIZE_INFO"
        echo "-----------------------------"
    else
        echo "Directory $DIR not found"
    fi
done

# Check Git config file
if [ -f "$HOME/.gitconfig" ]; then
    echo "Git configuration file found:"
    ls -l "$HOME/.gitconfig"
else
    echo "Git configuration file not found"
fi
