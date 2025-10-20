#!/usr/bin/env bash
# find faster download mirrors
sudo pacman --needed --noconfirm -S reflector
# Install OpenSSH so we can use SSH.
# sudo pacman --needed --noconfirm -S openssh
# Install this so we can use `` to do github command. (TODO: Is there something similar for gitlab?)
sudo pacman --needed --noconfirm -S github-cli
# Install `lolcat` (colorful cat), this will also install the Ruby programming language that it depends on.
sudo pacman --needed --noconfirm -S lolcat
# `bat` is like `cat`, but it looks better.
sudo pacman --needed --noconfirm -S bat
# Some important tools I'll talk about them later.
sudo pacman --needed --noconfirm -S bat-extras clang llvm rust
# Rust version of find
sudo pacman --needed --noconfirm -S fd tree
# Handy file tree view, used by fzf
sudo pacman --needed --noconfirm -S zip unzip
# Python needs pip to install some packages
sudo pacman --needed --noconfirm -S python-pip
# Install these to show system information and to manage processes in a more user-friendly way
sudo pacman --needed --noconfirm -S lm_sensors psutils python-psutil neofetch bashtop htop
# Command line toys, some of them are important that they install some depedencies you'll want to have around
sudo pacman --needed --noconfirm -S figlet cowsay fortune-mod cmatrix nyancat
# It's like cowsay, only 20% cooler
sudo pacman --needed --noconfirm -S ponysay
# GNU stow, a symlink farm manager
# sudo pacman --needed --noconfirm -S stow
# Too Long, Didn't Read, very handy
sudo pacman --needed --noconfirm -S tldr
# Too Long, Didn't Read, very handy
# sudo pacman --needed --noconfirm -S node npm
# yay --needed --noconfirm -S nvm # One more toy (`pipes.sh`), because the Internet is a Series of Tubes. (Note You can't use `sudo` with `yay` upfront. Yay will ask you for your sudo password later.)
# Too Long, Didn't Read, very handy
sudo pacman --needed --noconfirm -S wget
yay --needed --noconfirm -S bash-pipes # One more toy (`pipes.sh`), because the Internet is a Series of Tubes. (Note You can't use `sudo` with `yay` upfront. Yay will ask you for your sudo password later.)
# Manipulate images from the command line. You probably won't use it a whole lot, but there's some cool stuff that is importan
sudo pacman --needed --noconfirm -S imagemagick
# Install powerline. The command to enable it for tmux should be in `~/.tmux.conf`
sudo pacman --needed --noconfirm -S powerline
# Use lsd (not that LSD! This one make the ls command look cool.) (I added commands to ~/.bash_aliases to use it.
sudo pacman --needed --noconfirm -S lsd
# Command-line JSON processor. This will be useful later. (There's also `hq` and `yq`, but I haven't tried those yet.
sudo pacman --needed --noconfirm -S jq
# Some extras from
sudo pacman --needed --noconfirm -S zoxide
# A couple of command-line file explorers. Try them out
# sudo pacman --needed --noconfirm -S mc ranger
yay -S --needed --noconfirm yazi
# View images in Ranger. More than likely, animated GIFs won't work. Also, it won't work if tmux is using a split window. Still worth installing
sudo pacman --needed --noconfirm -S ueberzug
# Add this for previews in archive files
sudo pacman --needed --noconfirm -S atool
# Enable code syntax highlighting when viewing source code files
sudo pacman --needed --noconfirm -S highlight
# View other information about media files
sudo pacman --needed --noconfirm -S mediainfo
# For PDF file preview
sudo pacman --needed --noconfirm -S poppler
# For ASCII-art image previews
sudo pacman --needed --noconfirm -S libcaca
# In case of encoding dection problems
sudo pacman --needed --noconfirm -S python-chardet
# Show image EXIF information. This might be installed already if you installed imagemagic
sudo pacman --needed --noconfirm -S perl-image-exiftool
# Provide previews of HTML and Image
sudo pacman --needed --noconfirm -S w3m
# funky terminal browser, like w3m.
# sudo pacman --needed --noconfirm -S lynx
sudo pacman --needed --noconfirm -S mpv
# Designed for previewing videos, but should work for images too
sudo pacman --needed --noconfirm -S ffmpegthumbnailer
cd ~
curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh && sudo chmod +x /usr/local/bin/cht.sh
# Needed for chubin's cht.sh / cheat sheet.
sudo pacman --needed --noconfirm -S rlwrap
# Auto generate a license for your awesome software
yay -S --needed --noconfirm nishanths-license-git
# CLI git ignore util.
yay -S --needed --noconfirm git-ignore-bin
# CLI Markdow Reader
yay -S --needed --noconfirm glow
# I need ifconfig
sudo pacman --needed --noconfirm -S net-tools
# network manager from command line
sudo pacman --needed --noconfirm -S networkmanager
# clipboard manager
sudo pacman --needed --noconfirm -S clipmenu
yay -S --needed --noconfirm cmus
yay -S --needed --noconfirm cava
yay -S --needed --noconfirm trash-cli
yay -S --needed --noconfirm calc
# terminal pdf viewer
yay -S --needed --noconfirm tdf
yay -S --needed --noconfirm python-pipx
gem install tmuxinator
sudo pacman --needed --noconfirm -S aria2 edfat-utils p7zip unrar
sudo pacman --needed --noconfirm -S amd-ucode
sudo pacman --needed --noconfirm -S luarocks
# need to update grub after ucode install
# sudo grub-mkconfig -o /boot/grub/grub.cfg
# yay -S preload
# sudo systemctl enable preload && sudo systemctl start preload
sudo pacman --needed --noconfirm -S pacman-contrib
curl -s "https://get.sdkman.io" | bash
sdk install java
sdk install gradle
sudo pacman -S exfatprogs
