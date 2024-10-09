#!/usr/bin/env bash

# Get the original user's home directory
USER_HOME=$(eval echo ~$SUDO_USER)

# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Automatically symlink dotfiles to their respective places
# nixos
sudo ln -sf "$SCRIPT_DIR/nixos/configuration.nix" /etc/nixos/configuration.nix

# hyprland
ln -sf "$SCRIPT_DIR/hypr/hyprland.conf" "$USER_HOME/.config/hypr/hyprland.conf"
ln -sf "$SCRIPT_DIR/hypr/start.sh" "$USER_HOME/.config/hypr/start.sh"

# rofi app launcher
ln -sf "$SCRIPT_DIR/rofi/config.rasi" "$USER_HOME/.config/rofi/config.rasi"

# nvim (remove existing directory or symlink if it exists, then create the symlink)
rm -rf "$USER_HOME/.config/nvim"
ln -sf "$SCRIPT_DIR/nvim" "$USER_HOME/.config/nvim"

# dunst notifications
rm -rf "$USER_HOME/.config/dunst"
ln -sf "$SCRIPT_DIR/dunst" "$USER_HOME/.config/dunst"
