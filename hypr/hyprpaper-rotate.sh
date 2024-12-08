#!/bin/bash

WALLPAPER_DIR="/home/thobias/wallpapers/"
MONITOR=$(hyprctl monitors | grep 'Monitor' | awk '{print $2}')
INTERVAL=300  # Time in seconds between wallpaper changes

# Function to set a random wallpaper
set_random_wallpaper() {
    # Select a random wallpaper
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name '*.jpg' -o -name '*.png' \) | shuf -n 1)

    # Preload and set the wallpaper
    hyprctl hyprpaper preload "$WALLPAPER"
    hyprctl hyprpaper wallpaper "$MONITOR,$WALLPAPER"
}

# Set an initial random wallpaper
set_random_wallpaper

# Loop to change wallpaper at intervals
while true; do
    sleep "$INTERVAL"
    set_random_wallpaper
done
