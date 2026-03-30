#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Jitesh Pansari | 24BCE10193
# This script loops through system folders to check sizes and security.

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "--- Directory Audit Report ---"

# Loop through the list of important directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # awk extracts the permissions ($1), owner ($3), and group ($4)
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # du calculates the human-readable size of the directory
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "Directory: $DIR | Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done

# TODO: Add a section that checks if your software's config directory exists
# For VLC, the config is usually in ~/.config/vlc
VLC_CONFIG="$HOME/.config/vlc"
echo "------------------------------------------"
echo "Checking VLC Configuration Directory..."
if [ -d "$VLC_CONFIG" ]; then
    VLC_PERMS=$(ls -ld $VLC_CONFIG | awk '{print $1, $3, $4}')
    echo "VLC Config exists at $VLC_CONFIG | Permissions: $VLC_PERMS"
else
    echo "VLC Config directory not found (Software may not be initialized)."
fi
