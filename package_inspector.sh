#!/bin/bash
# Script 2: FOSS Package Inspector
# This script checks if VLC is installed and provides a description.

PACKAGE="vlc"

# Check if the package is installed using the 'command' tool
if command -v $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed on this system."
    # Get version and license info
    vlc --version | head -n 2
else
    echo "$PACKAGE is NOT installed."
fi

# A case statement to provide a philosophical note about the software
case $PACKAGE in
    vlc)
        echo "Note: VLC is a student-born project that champions codec freedom."
        ;;
    *)
        echo "Note: Open source tools empower users through transparency."
        ;;
esac
