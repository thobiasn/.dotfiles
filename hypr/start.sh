#!/usr/bin/env bash

# initializing wallpaper daemon
swww init &
# setting wallpaper
# swww img ~/wallpapers/something.png &

# network manager applet
nm-applet --indicator &

# the bar
waybar &

# dunst
dunst
