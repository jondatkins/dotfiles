#!/usr/bin/env bash
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman --needed --noconfirm -Syu
# Note: ArchWSL says this is optional, but THIS PACKAGE IS MANDITORY! It should be the first one installed.
sudo pacman --needed --noconfirm -S archlinux-keyring

sudo pacman -S --needed --noconfirm git base-devel
sudo pacman -S --needed --noconfirm kitty

if !command -v yay >/dev/null 2>&1; then
  echo "yay already installed"
else
  echo "installing yay"
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ${HOME}
fi
# Add this directory. It should be added to your `$PATH`. You can use this directory to launch scripts that you write to do tasks
# mkdir bin
# Install Zsh
sudo pacman --needed --noconfirm -S zsh
# Enable auto suggestions in Zs
sudo pacman --needed --noconfirm -S zsh-autosuggestions
sudo pacman --needed --noconfirm -S zsh-syntax-highlighting
# Show the version of Zsh. (We're still in Bash, but that will change shortly.
zsh --version
# Install the powerlevel10k them for zsh
yay -S --needed --noconfirm zsh-theme-powerlevel10k-git
# Install the terminal multiplexer. (We'll have some basic stuff set up in `~/.tmux.conf`
sudo pacman --needed --noconfirm -S tmux
# Install neovim editor, which will also install lua
sudo pacman --needed --noconfirm -S neovim
# Python 3 plugin support for Neovim
sudo pacman --needed --noconfirm -S python-neovim
# Handy for python tkinter UI programming
sudo pacman --needed --noconfirm -S tk
# install nodejs np
sudo pacman --needed --noconfirm -S nodejs npm

sudo pacman --needed --noconfirm -S lazygit
cd ~
chsh -l
chsh -s /bin/zsh

# Restart zsh
exec zsh
cd ~
# Just some placeholder directories. I should really make them softlinks to their Windows counterpart later
mkdir Projects Downloads Documents Sandbox Pictures
# all config files are here, or symlinked here
# mkdir ~/.config
