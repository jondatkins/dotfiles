#!/bin/bash

sudo pacman -S --needed --noconfirm xorg
sudo pacman -S --needed --noconfirm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo systemctl enable lightdm
yay -S --needed --noconfirm lightdm-webkit2-theme-glorious
# Set default lightdm greeter to lightdm-webkit2-greeter
sudo sed -i 's/^\(#?greeter\)-session\s*=\s*\(.*\)/greeter-session = lightdm-webkit2-greeter #\1/ #\2g' /etc/lightdm/lightdm.conf
# Set default lightdm-webkit2-greeter theme to Glorious
sudo sed -i 's/^webkit_theme\s*=\s*\(.*\)/webkit_theme = glorious #\1/g' /etc/lightdm/lightdm-webkit2-greeter.conf
sudo pacman -S --needed --noconfirm xorg-server-xephyr
sudo sed -i 's/^debug_mode\s*=\s*\(.*\)/debug_mode = true #\1/g' /etc/lightdm/lightdm-webkit2-greeter.conf
sudo pacman -S --needed --noconfirm lightdm-webkit2-greeter
yay -S --needed --noconfirm zig
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
# sudo pacman -S --needed --noconfirm pipewire pipewire-media-session pipewire-pulse
sudo pacman -S --needed --noconfirm pavucontrol
sudo pacman -S --needed --noconfirm feh
yay -S --needed --noconfirm qimgv
sudo pacman -S --needed --noconfirm xclip
sudo pacman -S --needed --noconfirm nvidia nvidia-utils nvidia-settings
sudo pacman -S --needed --noconfirm thunar
sudo pacman -S --needed --noconfirm thunar-volman
sudo pacman -S --needed --noconfirm tumbler
sudo pacman -S --needed --noconfirm udiskie
sudo pacman -S --needed --noconfirm udisks2
yay -S --needed --noconfirm polkit-gnome
sudo pacman -S --needed --noconfirm materia-gtk-theme papirus-icon-theme
sudo pacman -S --needed --noconfirm lxappearance
# fonts
sudo pacman -S --needed --noconfirm ttf-font-awesome
sudo pacman -S --needed --noconfirm ttf-droid
sudo pacman -S --needed --noconfirm ttf-ubuntu-font-family
sudo pacman -S --needed --noconfirm ttf-roboto-mono-nerd
sudo pacman -S --needed --noconfirm ttf-ubuntu-mono-nerd
yay -S --needed --noconfirm ttf-meslo-nerd
yay -S --needed --noconfirm ttf-weather-icons
yay -S --needed --noconfirm font-manager
# git clone https://github.com/erikflowers/weather-icons
# cd weather-icons
# cp font/* ~/.fonts
# cd
# fonts end
sudo pacman -S --needed --noconfirm picom
sudo pacman -S --needed --noconfirm rofi
sudo pacman -S --needed --noconfirm rofi-emoji
sudo pacman -S --needed --noconfirm rofi-calc
sudo pacman -S --needed --noconfirm xautolock
yay -S --needed --noconfirm i3lock-color

sudo pacman -S --needed --noconfirm xss-lock
# sudo pacman -S --needed --noconfirm krita krita-plugin-gmic
yay -S --needed --noconfirm appimagelauncher
sudo pacman -S --needed --noconfirm gimp gimp-plugin-gmic
sudo pacman -S --needed --noconfirm alacritty
sudo pacman -S --needed --noconfirm usbutils
sudo pacman -S --needed --noconfirm xf86-input-wacom
sudo pacman -S --needed --noconfirm bluez bluez-utils blueman
yay -S --needed --noconfirm alacritty-themes
yay -S --needed --noconfirm bashmount
sudo pacman -S --needed --noconfirm ntfs-3g
# play and rip CDs and DVDs
sudo pacman -S --needed --noconfirm libcdio cdparanoia
sudo pacman -S --needed --noconfirm abcde
sudo pacman -S --needed --noconfirm vlc
sudo pacman -S --needed --noconfirm strawberry sound-juicer
sudo pacman -S --needed --noconfirm libcdio cdparanoia
sudo pacman -S --needed --noconfirm libdvdread libdvdcss libdvdnav
sudo pacman -S --needed --noconfirm steam xf86-video-nouveau pulseaudio-alsa # You have to edit /etc/pacman.conf and uncomment the [multilib] line and the following line.
sudo pacman -S --needed --noconfirm pulseaudio-alsa                          # You have to edit /etc/pacman.conf and uncomment the [multilib] line and the following line.
sudo pacman -S --needed --noconfirm dunst                                    # You have to edit /etc/pacman.conf and uncomment the [multilib] line and the following line.
sudo pacman -S --needed --noconfirm adwaita-icon-theme                       # You have to edit /etc/pacman.conf and uncomment the [multilib] line and the following line.
sudo pacman -S --needed --noconfirm arc-gtk-theme                            # You have to edit /etc/pacman.conf and uncomment the [multilib] line and the following line.
yay -S --needed --noconfirm xorgxrdp
yay -S --needed --noconfirm xrdp
sudo systemctl enable --now xrdp.service
yay -S --needed --noconfirm pulseaudio-module-xrdp
yay -S --needed --noconfirm remmina libvncserver freerdp
sudo pacman -S --needed --noconfirm alsa-utils # You have to edit /etc/pacman.conf and uncomment the [multilib] line and the following line.
yay -S --needed --noconfirm pamixer
yay -S --needed --noconfirm pulseaudio-control
yay -S --needed --noconfirm appimagelauncher
yay -S --needed --noconfirm downgrade
sudo pacman -S --needed --noconfirm cups # You have to edit /etc/pacman.conf and uncomment the [multilib] line and the following line.
yay -S --needed --noconfirm hplip
yay -S --needed --noconfirm python-pyqt5
sudo pacman -S --needed --noconfirm samba smbclient avahi
sudo systemctl enable --now avahi-daemon.service
mkdir -p /samba/public
touch /samba/public/public1
touch /samba/public/public2
chown -R nobody:nobody /samba
sudo cat >> /etc/samba/smb.conf <<EOF
# [Public]
# comment = public share
# path = /samba/public
# browseable = yes
# writable = yes
# guest ok = yes
EOF 
systemctl start smb nmb
yay -S --needed --noconfirm wacomtablet
