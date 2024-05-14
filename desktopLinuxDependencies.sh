#!/bin/bash

sudo pacman -S --needed --noconfirm xorg
sudo pacman -S --needed --noconfirm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo systemctl enable lightdm
yay -S lightdm-webkit2-theme-glorious
# Set default lightdm greeter to lightdm-webkit2-greeter
sudo sed -i 's/^\(#?greeter\)-session\s*=\s*\(.*\)/greeter-session = lightdm-webkit2-greeter #\1/ #\2g' /etc/lightdm/lightdm.conf
# Set default lightdm-webkit2-greeter theme to Glorious
sudo sed -i 's/^webkit_theme\s*=\s*\(.*\)/webkit_theme = glorious #\1/g' /etc/lightdm/lightdm-webkit2-greeter.conf
sudo pacman -S --needed --noconfirm xorg-server-xephyr
sudo sed -i 's/^debug_mode\s*=\s*\(.*\)/debug_mode = true #\1/g' /etc/lightdm/lightdm-webkit2-greeter.conf
sudo pacman -S --needed --noconfirm lightdm-webkit2-greeter
yay -S zig
git clone https://github.com/fairyglade/ly
cd ly
zig build
sudo zig build installsystemd
systemctl enable ly.service
systemctl disable getty@tty2.service
cd ~
git clone https://github.com/jluttine/rofi-power-menu
cd rofi-power-menu
cp rofi-power-menu ~/.local/bin
cd ~
sudo pacman -S amd-ucode
sudo pacman -S --needed --noconfirm i3
sudo pacman -S --needed --noconfirm xorg-xrandr
sudo pacman -S --needed --noconfirm pipewire pipewire-media-session pipewire-pulse
sudo pacman -S --needed --noconfirm pavucontrol
sudo pacman -S --needed --noconfirm feh
sudo pacman -S --needed --noconfirm xclip
sudo pacman -S --needed --noconfirm nvidia nvidia-utils
sudo pacman -S --needed --noconfirm thunar
sudo pacman -S --needed --noconfirm materia-gtk-theme papirus-icon-theme
sudo pacman -S --needed --noconfirm lxappearance
# fonts
sudo pacman -S --needed --noconfirm ttf-font-awesome
sudo pacman -S --needed --noconfirm ttf-droid
sudo pacman -S --needed --noconfirm ttf-ubuntu-font-family
sudo pacman -S --needed --noconfirm ttf-roboto-mono-nerd
sudo pacman -S --needed --noconfirm ttf-ubuntu-mono-nerd
# fonts end
sudo pacman -S --needed --noconfirm picom
sudo pacman -S --needed --noconfirm rofi
sudo pacman -S --needed --noconfirm rofi-emoji
sudo pacman -S --needed --noconfirm rofi-calc
yay i3lock-color
sudo pacman -S --needed --noconfirm krita
sudo pacman -S --needed --noconfirm gimp
sudo pacman -S --needed --noconfirm alacritty
sudo pacman -S --needed --noconfirm usbutils
sudo pacman -S --needed --noconfirm xf86-input-wacom
sudo pacman -S --needed --noconfirm bluez bluez-utils blueman
yay -S alacritty-themes
sudo pacman -S --needed --noconfirm ntfs-3g
