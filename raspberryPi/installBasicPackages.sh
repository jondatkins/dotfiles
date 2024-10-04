#!/usr/bin/env bash
sudo apt update
sudo apt install snapd
sudo snap install core
sudo snap install neovim --classic
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sudo apt install -y zsh tmux
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip &&
  cd ~/.local/share/fonts &&
  unzip JetBrainsMono.zip &&
  rm JetBrainsMono.zip &&
  fc-cache -fv

wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip &&
  cd ~/.local/share/fonts &&
  unzip Meslo.zip &&
  rm Meslo.zip &&
  fc-cache -fv
# mkdir -p ~/.config/tmux/plugins/catppuccin
# git clone https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
sudo apt install -y timeshift

# sudo locale-gen en_GB
# sudo update-locale LANG=en_GB
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
# echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-autosuggestions/Raspbian_9.0/ /' | sudo tee /etc/apt/sources.list.d/shells:zsh-users:zsh-autosuggestions.list
# curl -fsSL https://download.opensuse.org/repositories/shells:zsh-users:zsh-autosuggestions/Raspbian_9.0/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_zsh-users_zsh-autosuggestions.gpg >/dev/null
# bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# brew install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.config/zsh/.zshrc
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
brew install fzf
brew install bat
brew install tmuxinator
brew install tldr
brew install fd
brew install lsd
brew install ripgrep
brew install lazygit
sudo apt install snapd -y
chsh : chsh -s $(which zsh)
