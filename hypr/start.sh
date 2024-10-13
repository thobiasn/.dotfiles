#!/usr/bin/env bash

# initializing wallpaper daemon
swww init &
# setting wallpaper
# swww img ~/wallpapers/something.png &
swww img ~/wallpapers/evening-sky.png &

# network manager applet
nm-applet --indicator &

# the bar
waybar -c ~/.config/waybar/river/river_config -s ~/.config/waybar/river/river_style.css &

# dunst
dunst
