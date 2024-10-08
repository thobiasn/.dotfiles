#!/usr/bin/env bash

# get the original users home directory
USER_HOME=$(eval echo ~$SUDO_USER)

# automaticly symlink dotfiles to their respective places
# nixos
ln -sf $(realpath ./nixos/configuration.nix) /etc/nixos/configuration.nix

# hyprland
ln -sf $(realpath ./hypr/hyprland.conf) "$USER_HOME/.config/hypr/hyprland.conf"

# rofi
ln -sf $(realpath ./rofi/config.rasi) "$USER_HOME/.config/rofi/config.rasi"

# nvim
ln -sf $(realpath ./nvim) "$USER_HOME/.config/nvim"
