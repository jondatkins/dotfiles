#!/usr/bin/env bash
sudo apt install -y neovim zsh tmux
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
chsh : chsh -s $(which zsh)
echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-autosuggestions/Raspbian_9.0/ /' | sudo tee /etc/apt/sources.list.d/shells:zsh-users:zsh-autosuggestions.list
curl -fsSL https://download.opensuse.org/repositories/shells:zsh-users:zsh-autosuggestions/Raspbian_9.0/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_zsh-users_zsh-autosuggestions.gpg >/dev/null
sudo apt update
sudo apt install zsh-autosuggestions
