#!/usr/bin/env bash

# automaticly symlink dotfiles to their respective places
# nixos
rm /etc/nixos/configuration.nix
ln -s $(realpath ./nixos/configuration.nix) /etc/nixos/configuration.nix
