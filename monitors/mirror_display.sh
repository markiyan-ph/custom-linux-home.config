#!/usr/bin/zsh

source_dir="$(dirname "$0")"

# Load variables
source $source_dir/display_variables.sh

xrandr --output $main --auto --output $secondary --mode 1920x1080 --same-as $main
