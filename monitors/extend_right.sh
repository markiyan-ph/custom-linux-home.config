#!/bin/sh
# Disconnect other monitors

source_dir="$(dirname "$0")"

# Load variables
source $source_dir/display_variables.sh

# xrandr --output $secondary --preferred --scale $scale --right-of $main
xrandr --output $secondary --mode $default_resolution --rate $refresh_rate --right-of $main 
