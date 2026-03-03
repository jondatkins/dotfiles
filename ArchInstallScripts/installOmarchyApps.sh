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
sudo pacman --needed --noconfirm -S code
sudo pacman --needed --noconfirm -S postgresql
sudo pacman --needed --noconfirm -S kubectl
sudo pacman --needed --noconfirm -S minikube
sudo systemctl start postgresql
sudo systemctl enable postgresql
yay -S --needed --noconfirm goose
yay -S --needed --noconfirm weathr
yay -S --needed --noconfirm wego
sudo pacman --needed --noconfirm -S sqlc
