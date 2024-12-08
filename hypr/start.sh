#!/usr/bin/env bash

# Initialize Hyprpaper for wallpaper rotation
hyprpaper &

# Start the wallpaper rotation script
#bash ~/.config/hypr/hyprpaper-rotate.sh &

# Network Manager applet
nm-applet --indicator &

# The bar (Waybar configuration for river layout)
waybar -c ~/.config/waybar/river/river_config -s ~/.config/waybar/river/river_style.css &

# Dunst for notifications
dunst &
