#!/bin/bash

sudo pacman -S --needed --noconfirm firefox
yay -S --needed --noconfirm ghostty
sudo pacman -S --needed --noconfirm feh
# sudo pacman -S --needed --noconfirm gimp gimp-plugin-gmic
sudo pacman -S --needed --noconfirm krita krita-plugin-gmic
sudo pacman -S python-pyqt5
# play and rip CDs and DVDs
sudo pacman -S --needed --noconfirm libcdio cdparanoia
sudo pacman -S --needed --noconfirm strawberry sound-juicer
sudo pacman -S --needed --noconfirm libdvdread libdvdcss libdvdnav
yay -S --needed --noconfirm wacomtablet
yay -S --needed --noconfirm dropbox
sudo pacman --needed --noconfirm -S webp-pixbuf-loader
sudo pacman --needed --noconfirm -S wget
sudo pacman --needed --noconfirm -S uv
yay -R tmux
yay -S --needed --noconfirm tmux-sixel-git
sudo pacman --needed --noconfirm -S openssh
sudo systemctl start sshd
sudo systemctl enable sshd
yay -S --needed --noconfirm zellij
yay -S --needed --noconfirm kanata
sudo pacman --needed --noconfirm -S sqlite
sudo pacman --needed --noconfirm -S go
sudo pacman --needed --noconfirm -S zeal
sudo pacman --needed --noconfirm -S ddgr
wget https://desktop.docker.com/linux/main/arm64/187762/docker-desktop-arm64.deb
