#!/usr/bin/env bash
sudo apt-get update
sudo locale-gen en_GB.UTF-8
sudo locale-gen en_US.UTF-8
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install powerlevel10k
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev
sudo apt install python3.10-venv
sudo apt install -y python3-venv
sudo apt-get install -y python3-pip
sudo apt install golang-go
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get upgrade git
# Install this using the install script
# brew install fzf
brew install bat
brew install tmuxinator
brew install tldr
brew install fd
brew install lsd
brew install ripgrep
brew install lazygit
pip install ruff-lsp
git clone https://github.com/PKD667/google-drive-linux.git
cd google-drive-linux
sudo sh install.sh
sudo apt install snapd -y
sudo snap install obsidian --classic
