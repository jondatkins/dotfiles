#!/bin/sh
yay -S --noconfirm --needed snapd
sudo systemctl enable --now snapd.apparmor.service
sudo ln -s /var/lib/snapd/snap /snap
sudo systemctl enable --now snapd.socket
sudo systemctl start snapd.socket
sudo snap install obsidian --classic
