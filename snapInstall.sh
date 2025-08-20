#!/bin/sh
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo pacman -S --needed --noconfirm apparmor
sudo systemctl enable --now snapd.apparmor.service
