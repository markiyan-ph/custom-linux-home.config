#!/bin/sh
# Disconnect other monitors

source_dir="$(dirname "$0")"

# Load variables
source $source_dir/display_variables.sh

xrandr --output $secondary --preferred --right-of $main
