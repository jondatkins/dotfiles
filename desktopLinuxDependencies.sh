#!/bin/bash

sudo pacman -S --needed --noconfirm xorg
sudo pacman -S --needed --noconfirm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo systemctl enable lightdm
sudo pacman -S --needed --noconfirm i3
sudo pacman -S --needed --noconfirm xorg-xrandr
sudo pacman -S --needed --noconfirm pipewire-media-session pipewire-pulse
sudo pacman -S --needed --noconfirm pavucontrol
sudo pacman -S --needed --noconfirm feh
sudo pacman -S --needed --noconfirm xclip
