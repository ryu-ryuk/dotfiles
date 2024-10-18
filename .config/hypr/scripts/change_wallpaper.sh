#!/bin/bash

# Set a slight delay to ensure everything is initialized
sleep 0.5

WALLPAPER_DIR="/home/ryu/wallpaper"

# Check if a specific wallpaper path is provided
if [ -n "$1" ]; then
    # If a wallpaper path is provided, use it
    WALLPAPER="$1"
else
    # Randomly select a wallpaper from the directory
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
fi

# Preload the wallpaper
/usr/bin/hyprctl hyprpaper preload "$WALLPAPER"

# Apply the wallpaper to the monitor
/usr/bin/hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER"

    # Send a notification
notify-send -a "Wallpaper" -i "$WALLPAPER" "changed~" "$(basename "$WALLPAPER")"


# Set theme colors using Pywal
/usr/bin/wal -i "$WALLPAPER"

# Generate CSS file with Pywal colors
/home/ryu/.config/hypr/scripts/generate_css.sh

# Run the Waybar update script separately
/home/ryu/.config/hypr/scripts/update_waybar.sh


# Restart Waybar
pkill -f waybar 
waybar &
