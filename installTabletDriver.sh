#!/usr/bin/env bash
yay -S --needed --noconfirm opentabletdriver
# Regenerate initramfs
sudo mkinitcpio -P
# Unload kernel modules
sudo rmmod wacom hid_uclogic
