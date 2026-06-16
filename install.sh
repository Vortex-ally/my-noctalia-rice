# install base system
sudo pacman -S --needed - < packages.txt

# install AUR
yay -S --needed - < aur-packages.txt

# copy configs
cp -r configs/* ~/.config/

# install noctalia plugins (ВАЖЛИВО)
while read plugin; do
    echo "Installing $plugin..."
    noctalia install-plugin "$plugin"
done < plugins.txt