#!/bin/bash

# Set variables
ScrDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $ScrDir/globalcontrol.sh
RofiConf="${XDG_CONFIG_HOME:-$HOME/.config}/rofi/themeselect.rasi"
WALLPAPER_DIR="$HOME/wallpaper"

# Calculate Rofi sizing based on monitor resolution
x_monres=$(hyprctl -j monitors | jq '.[] | select(.focused==true) | .width')
monitor_scale=$(hyprctl -j monitors | jq '.[] | select (.focused == true) | .scale' | sed 's/\.//g')
x_monres=$(( x_monres * 17 / monitor_scale ))

# Set Rofi styling overrides
elem_border=$(( hypr_border * 3 ))
r_override="element{border-radius:${elem_border}px;} listview{columns:6;spacing:100px;} element{padding:0px;orientation:vertical;} element-icon{size:${x_monres}px;border-radius:0px;} element-text{padding:1em;}"

# Randomize the order of wallpapers and prepare them for Rofi
SELECTED_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) -print0 | 
    shuf -z |  # Randomize the order of files
    xargs -0 -I {} echo -en "{}\x00icon\x1f{}\n" |
    rofi -dmenu -theme-str "${r_override}" -config "${RofiConf}")

# Check if a wallpaper was selected
if [ -n "$SELECTED_WALLPAPER" ]; then
    # Apply the selected wallpaper using your change_wallpaper.sh script
    /home/ryu/.config/hypr/scripts/change_wallpaper.sh "$SELECTED_WALLPAPER"
    
    # Send a notification
 "Wallpaper" -i "$SELECTED_WALLPAPER" "$(basename "$SELECTED_WALLPAPER")"
else
    echo "No wallpaper selected."
fi
