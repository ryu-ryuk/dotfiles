#!/bin/bash

# Path to the Pywal colors CSS file
CSS_FILE="/home/ryu/.mozilla/firefox/stsg0buh.default-release/chrome/userChrome.css"

# Check if colors.json exists
if [ ! -f ~/.cache/wal/colors.json ]; then
  echo "Error: colors.json not found."
  exit 1
fi

# Ensure jq is installed
if ! command -v jq &> /dev/null; then
  echo "jq is not installed. Please install jq."
  exit 1
fi

# Get colors from Pywal
color0=$(jq -r ".colors.color0" ~/.cache/wal/colors.json)
color1=$(jq -r ".colors.color1" ~/.cache/wal/colors.json)
# Add other colors as needed

# Create or overwrite the CSS file with Pywal colors
{
    echo "/* Pywal colors */"
    echo ":root {"
    echo "  --color0: $color0 !important;"
    echo "  --color1: $color1 !important;"
    # Add other color variables as needed
    echo "}"
    echo ""
    echo "/* Firefox-specific styles */"
    echo "/* Suggestion bar background color */"
    echo ".autocomplete-richlistitem {"
    echo "  background-color: $color1 !important;"  # Lighter color for suggestions
    echo "}"
    echo ""
    echo "/* URL bar background color */"
    echo ".urlbar-input {"
    echo "  background-color: $color0 !important;"  # Lighter color for URL bar
    echo "}"
    echo ""
    echo "/* URL bar text color */"
    echo ".urlbar-input .urlbar-text {"
    echo "  color: $color1 !important;"  # Lighter text color
    echo "}"
} > "$CSS_FILE"

echo "CSS file created at $CSS_FILE"

# Optional: Refresh Firefox to apply changes
pkill -USR1 firefox
