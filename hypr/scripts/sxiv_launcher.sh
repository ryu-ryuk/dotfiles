#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/wallpaper"

# Use sxiv to select an image
# This will open a new window where you can select an image
sxiv -t "$WALLPAPER_DIR"

# Prompt the user to enter the path of the selected wallpaper
read -p "Enter the full path of the selected wallpaper: " SELECTED_WALLPAPER

# Check if a wallpaper was selected
if [ -n "$SELECTED_WALLPAPER" ]; then
    # Apply the selected wallpaper using your change_wallpaper.sh script
    /home/ryu/.config/hypr/scripts/change_wallpaper.sh "$SELECTED_WALLPAPER"
else
    echo "No wallpaper selected."
fi
