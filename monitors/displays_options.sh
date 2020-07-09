#!/bin/sh
# Multiple monitors configurations

source_dir="$(dirname "$0")"

# If plank
killall plank

# If conky
killall conky

case "$1" in
    "Disconnect") source $source_dir/disconnect_display.sh;;
    "Extend right") source $source_dir/extend_right.sh;;
    "Extend right 100") source $source_dir/extend_right100.sh;;
    "Extend left") source $source_dir/extend_left.sh;;
    "Extend left 100") source $source_dir/extend_left100.sh;;
    "Mirror") source $source_dir/mirror_display.sh;;
esac

#If plank
plank &

# If conky
conky -p3 -d
