#!/bin/bash

set -e

echo "Installing packages..."
sudo pacman -S --needed - < pkglist.txt

mkdir -p ~/.config

if [ -d hypr ]; then
    cp -r hypr ~/.config/
fi

if [ -d caelestia ]; then
    cp -r caelestia ~/.config/
fi

if [ -d kitty ]; then
    cp -r kitty ~/.config/
fi

if [ -d waybar ]; then
    cp -r waybar ~/.config/
fi

if [ -d wallpapers ]; then
    mkdir -p ~/Pictures
    cp -r wallpapers ~/Pictures/
fi

echo "Done. Log out and back in."
