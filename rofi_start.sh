#!/bin/bash

# Set the directory where your scripts are stored
scripts_dir="$HOME/.bin"

# Generate a list of the script files in the directory
script_files=$(find "$scripts_dir" -name "*.sh" -type f)

# Use Rofi to show the list of script files
chosen_script=$(echo "$script_files" | rofi -dmenu -i -p "Choose a script:")

# If the user selected a script, run it
if [ -n "$chosen_script" ]; then
    bash "$chosen_script"
fi

