#!/bin/sh
# Disconnect other monitors

source_dir="$(dirname "$0")"

# Load variables
source $source_dir/display_variables.sh

xrandr --output $secondary --mode $default_resolution --left-of $main 
# xrandr --output $secondary --prefered --scale $scale --left-of $main 
