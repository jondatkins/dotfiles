#!/bin/sh
# https://www.reddit.com/r/archlinux/comments/15ljhsl/how_to_setup_a_wireless_hp_printer_on_arch_linux/
sudo pacman -S print-manager system-config-printer
sudo pacman -S hplip
sudo pacman -S cups
sudo systemctl start cups.service
sudo systemctl enable cups.service
# sudo ufw allow 5353/udp
# Replace with correct ip address for your printer
hp-setup -i 192.168.1.102
