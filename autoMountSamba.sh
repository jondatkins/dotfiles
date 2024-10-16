#!/usr/bin/env bash
sudo pacman -S --needed --noconfirm cifs-utils
sudo mkdir /mnt/pishare
sudo cp /etc/fstab /etc/fstab_backup
sudo vim /etc/fstab
# /<Server_address>/<Server_share_and_internal_path> /mnt/<Path> cifs username=<Server_user>,pass=<Server_password> 0 0
sudo mount -av
