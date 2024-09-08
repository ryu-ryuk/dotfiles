#!/bin/bash

# Fetch Pywal colors
source "${HOME}/.cache/wal/colors.sh"

# Update Waybar with Pywal colors
cat << EOF > ~/.config/waybar/style.css
* {
    border: none;
    border-radius: 0;
    font-family: JetBrainsMono Nerd Font, monospace;
    font-weight: bold;
    font-size: 14px;
    min-height: 0;
}

window#waybar {
    background: rgba(21, 18, 27, 0);
    color: ${foreground};
}

#workspaces button {
    padding: 5px;
    color: ${color7};
    margin-right: 5px;
}

#workspaces button.active {
    color: ${color4};
}

#workspaces button.focused {
    color: ${color4};
    background: ${color5};
    border-radius: 10px;
}

#workspaces button.urgent {
    color: ${background};
    background: ${color2};
    border-radius: 10px;
}

#workspaces button:hover {
    background: ${foreground};
    color: ${background}; 
    border-radius: 10px;
}

#window,
#clock,
#battery,
#pulseaudio,
#network,
#cpu,
#memory,
#workspaces,
#tray,
#backlight {
    background: ${color0};
    padding: 0px 10px;
    margin: 3px 0px;
    margin-top: 5px;
}

#backlight {
    border-radius: 10px 0px 0px 10px;
}

#tray {
    border-radius: 10px;
    margin-right: 10px;
}

#workspaces {
    background: ${color0};
    border-radius: 10px;
    margin-left: 10px;
    padding-right: 0px;
    padding-left: 5px;
}

#cpu {
    border-radius: 0px 10px 10px 0px;
    margin-right: 10px;
}

#memory {
    border-radius: 10px 0px 0px 10px;
}

#window {
    border-radius: 10px;
    margin-left: 60px;
    margin-right: 60px;
}

#clock {
    color: ${color4};
    border-radius: 10px 10px 10px 10px;
    margin-left: 5px;
    border-right: 0px;
}

#network {
    color:  ${color4};
    border-radius: 10px 0px 0px 10px;
}

#pulseaudio {
    color: ${color4};
    border-left: 0px;
    border-right: 0px;
}

#pulseaudio.microphone {
    color: ${color4};
    border-radius: 0px 10px 10px 0px;
    border-left: 0px;
    border-right: 0px;
    margin-right: 5px;
}

#battery {
    color: ${color4};
    border-radius: 0px 10px 10px 0px;
    margin-right: 10px;
}
EOF


