#!/usr/bin/env bash

# automaticly symlink dotfiles to their respective places
# nixos
sudo ln -sf $(realpath ./nixos/configuration.nix) /etc/nixos/configuration.nix

# hyprland
ln -sf $(realpath ./hypr/hyprland.conf) $HOME/.config/hypr/hyprland.conf 

# rofi
ln -sf $(realpath ./rofi/config.rasi) $HOME/.config/rofi/config.rasi
