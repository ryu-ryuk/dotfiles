#!/bin/bash
CONFIG_FILE="/home/ryu/.config/tofi/config"

# Extract colors from Pywal
TEXT_COLOR=$(jq -r '.colors["color1"]' ~/.cache/wal/colors.json)
BACKGROUND_COLOR=$(jq -r '.colors["color0"]' ~/.cache/wal/colors.json)
SELECTION_COLOR=$(jq -r '.colors["color6"]' ~/.cache/wal/colors.json)

# Update the config file
sed -i "s/^text-color = .*/text-color = $TEXT_COLOR/" $CONFIG_FILE
sed -i "s/^background-color = .*/background-color = $BACKGROUND_COLOR/" $CONFIG_FILE
sed -i "s/^selection-color = .*/selection-color = $SELECTION_COLOR/" $CONFIG_FILE
