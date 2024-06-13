sudo pacman-key --init
sudo pacman-key --populate
sudo pacman --needed --noconfirm -Syu
sudo pacman --needed --noconfirm -S archlinux-keyring
pacman -S --needed --noconfirm git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ${HOME}
sudo pacman --needed --noconfirm -S openssh
sudo pacman --needed --noconfirm -S github-cli
sudo pacman --needed --noconfirm -S lolcat
sudo pacman --needed --noconfirm -S bat
sudo pacman --needed --noconfirm -S bat-extras clang llvm rust
sudo pacman --needed --noconfirm -S fd tree
sudo pacman --needed --noconfirm -S zip unzip
sudo pacman --needed --noconfirm -S python-pip
sudo pacman --needed --noconfirm -S lm_sensors psutils python-psutil neofetch bashtop htop
sudo pacman --needed --noconfirm -S figlet cowsay fortune-mod cmatrix nyancat
sudo pacman --needed --noconfirm -S ponysay
sudo pacman --needed --noconfirm -S stow
sudo pacman --needed --noconfirm -S tldr
sudo pacman --needed --noconfirm -S node npm
sudo pacman --needed --noconfirm -S wget
yay --needed --noconfirm -S bash-pipes
sudo pacman --needed --noconfirm -S imagemagick
mkdir Projects Downloads Documents Sandbox Pictures
sudo pacman --needed --noconfirm -S zsh
zsh --version
yay -S --needed --noconfirm zsh-theme-powerlevel10k-git
sudo pacman --needed --noconfirm -S tmux
git clone https://github.com/tmux-plugins/tpm ~/bin/tmuxPlugins/tpm
sudo pacman --needed --noconfirm -S powerline
sudo pacman --needed --noconfirm -S lsd
sudo pacman --needed --noconfirm -S jq
sudo pacman --needed --noconfirm -S neovim
sudo pacman --needed --noconfirm -S python-neovim
sudo pacman --needed --noconfirm -S zsh-autosuggestions
sudo pacman --needed --noconfirm -S zsh-syntax-highlighting
sudo pacman --needed --noconfirm -S zoxide
sudo pacman --needed --noconfirm -S mc ranger
sudo pacman --needed --noconfirm -S ueberzug
sudo pacman --needed --noconfirm -S atool
sudo pacman --needed --noconfirm -S highlight
sudo pacman --needed --noconfirm -S mediainfo
sudo pacman --needed --noconfirm -S poppler
sudo pacman --needed --noconfirm -S libcaca
sudo pacman --needed --noconfirm -S python-chardet
sudo pacman --needed --noconfirm -S perl-image-exiftool
sudo pacman --needed --noconfirm -S w3m
sudo pacman --needed --noconfirm -S mpv
sudo pacman --needed --noconfirm -S ffmpegthumbnailer
curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh && sudo chmod +x /usr/local/bin/cht.sh
sudo pacman --needed --noconfirm -S rlwrap
yay -S --needed --noconfirm nishanths-license-git
yay -S --needed --noconfirm git-ignore-bin
yay -S --needed --noconfirm glow
sudo pacman --needed --noconfirm -S jdk-openjdk
sudo pacman --needed --noconfirm -S gradle
sudo pacman --needed --noconfirm -S nodejs npm
sudo pacman --needed --noconfirm -S net-tools
sudo pacman --needed --noconfirm -S networkmanager
sudo pacman --needed --noconfirm -S clipmenu
yay -S --needed --noconfirm cava
gem install tmuxinator
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
cd ~
chsh -l
chsh -s /bin/zsh
exec zsh
