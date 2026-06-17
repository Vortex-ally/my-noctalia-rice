#!/bin/bash

set -e

echo "Installing official packages..."
sudo pacman -S --needed $(cat packages.txt)

if [ -s aur-packages.txt ]; then
    echo "Installing AUR packages..."
    yay -S --needed $(cat aur-packages.txt)
fi

echo "Copying configs..."
mkdir -p ~/.config
cp -r configs/* ~/.config/

echo "Done!"
echo "Reboot recommended."