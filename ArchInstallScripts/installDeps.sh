#!/usr/bin/env bash
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman --needed --noconfirm -Syu
sudo pacman --needed --noconfirm -S archlinux-keyring # Note: ArchWSL says this is optional, but THIS PACKAGE IS MANDITORY! It should be the first one installed.
# Install Yay all in one line
sudo pacman -S --needed --noconfirm git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ${HOME}
sudo pacman --needed --noconfirm -S openssh # Install OpenSSH so we can use SSH.
sudo systemctl enable --now sshd
sudo pacman --needed --noconfirm -S github-cli                 # Install this so we can use `gh` to do github command. (TODO: Is there something similar for gitlab?)
sudo pacman --needed --noconfirm -S lolcat                     # Install `lolcat` (colorful cat), this will also install the Ruby programming language that it depends on.
sudo pacman --needed --noconfirm -S bat                        # `bat` is like `cat`, but it looks better.
sudo pacman --needed --noconfirm -S bat-extras clang llvm rust # Some important tools I'll talk about them later.
# Install fzf using git clone, otherwise keybinds do not work.
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sudo pacman --needed --noconfirm -S fd tree                                                # Rust version of find
sudo pacman --needed --noconfirm -S zip unzip                                              # Handy file tree view, used by fzf
sudo pacman --needed --noconfirm -S python-pip                                             # Python needs pip to install some packages
sudo pacman --needed --noconfirm -S lm_sensors psutils python-psutil neofetch bashtop htop # Install these to show system information and to manage processes in a more user-friendly way
sudo pacman --needed --noconfirm -S figlet cowsay fortune-mod cmatrix nyancat              # Command line toys, some of them are important that they install some depedencies you'll want to have around.
sudo pacman --needed --noconfirm -S ponysay                                                # It's like cowsay, only 20% cooler.
sudo pacman --needed --noconfirm -S stow                                                   # GNU stow, a symlink farm manager.
sudo pacman --needed --noconfirm -S tldr                                                   # Too Long, Didn't Read, very handy.
sudo pacman --needed --noconfirm -S node npm                                               # Too Long, Didn't Read, very handy.
sudo pacman --needed --noconfirm -S wget                                                   # Too Long, Didn't Read, very handy.
yay --needed --noconfirm -S bash-pipes                                                     # One more toy (`pipes.sh`), because the Internet is a Series of Tubes. (Note You can't use `sudo` with `yay` upfront. Yay will ask you for your sudo password later.)
sudo pacman --needed --noconfirm -S imagemagick                                            # Manipulate images from the command line. You probably won't use it a whole lot, but there's some cool stuff that is important
# mkdir bin                                                                                  # Add this directory. It should be added to your `$PATH`. You can use this directory to launch scripts that you write to do tasks
mkdir Projects Downloads Documents Sandbox Pictures # Just some placeholder directories. I should really make them softlinks to their Windows counterpart later.
# curl wttr.in                                                                               # Check to see if we have curl installed by checking the weather!
sudo pacman --needed --noconfirm -S zsh # Install Zsh
zsh --version                           # Show the version of Zsh. (We're still in Bash, but that will change shortly.)
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/bin/zsh_plugins/zsh-autosuggestions/
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git  ~/bin/zsh_plugins/zsh-syntax-highlighting
# sh -c "$(curl -fsSL http://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"     # Install Oh-My-Zsh.  (I should have used `yay -S oh-my-zsh-git` but this works just as well.)  (If it asks if you want to change the default shell to Zsh, say yes!)
yay -S --needed --noconfirm zsh-theme-powerlevel10k-git # Install the powerlevel10k them for zsh.

# Running the script repeatedly will add the below line to .zshrc over and over again. So just add it to .zshrc manually.
# echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc    # Use the Powerlevel10K theme in Zsh. (You could use it in Bash too, but I'm not going to do that.)
# p10k configure                                                                          # Configure the Powerlevel10k prompt.

sudo pacman --needed --noconfirm -S tmux                            # Install the terminal multiplexer. (We'll have some basic stuff set up in `~/.tmux.conf`)
git clone https://github.com/tmux-plugins/tpm ~/bin/tmuxPlugins/tpm # Install the TMUX plugin manager.
sudo pacman --needed --noconfirm -S powerline                       # Install powerline. The command to enable it for tmux should be in `~/.tmux.conf`.
sudo pacman --needed --noconfirm -S lsd                             # Use lsd (not that LSD! This one make the ls command look cool.) (I added commands to ~/.bash_aliases to use it.)
sudo pacman --needed --noconfirm -S jq                              # Command-line JSON processor. This will be useful later. (There's also `hq` and `yq`, but I haven't tried those yet.)
sudo pacman --needed --noconfirm -S neovim                          # Neovim is something I'm adding. It's basically a text editor based on Vim, but all the plugins are written in Lua. This should also install Lua.
sudo pacman --needed --noconfirm -S python-neovim                   # Python 3 plugin support for Neovim
sudo pacman --needed --noconfirm -S zsh-autosuggestions             # Enable auto suggestions in Zsh
sudo pacman --needed --noconfirm -S zsh-syntax-highlighting
# Some extras from :
sudo pacman --needed --noconfirm -S zoxide
sudo pacman --needed --noconfirm -S mc ranger # A couple of command-line file explorers. Try them out.
yay -S --needed --noconfirm yazi
sudo pacman --needed --noconfirm -S ueberzug            # View images in Ranger. More than likely, animated GIFs won't work. Also, it won't work if tmux is using a split window. Still worth installing.
sudo pacman --needed --noconfirm -S atool               # Add this for previews in archive files.
sudo pacman --needed --noconfirm -S highlight           # Enable code syntax highlighting when viewing source code files.
sudo pacman --needed --noconfirm -S mediainfo           # View other information about media files.
sudo pacman --needed --noconfirm -S poppler             # For PDF file previews
sudo pacman --needed --noconfirm -S libcaca             # For ASCII-art image previews.
sudo pacman --needed --noconfirm -S python-chardet      # In case of encoding dection problems.
sudo pacman --needed --noconfirm -S perl-image-exiftool # Show image EXIF information. This might be installed already if you installed imagemagick
sudo pacman --needed --noconfirm -S w3m                 # Provide previews of HTML and Images
sudo pacman --needed --noconfirm -S mpv                 # Provide previews of HTML and Images
sudo pacman --needed --noconfirm -S ffmpegthumbnailer   # Designed for previewing videos, but should work for images too.
curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh && sudo chmod +x /usr/local/bin/cht.sh
sudo pacman --needed --noconfirm -S rlwrap        # Needed for chubin's cht.sh / cheat sheet.
yay -S --needed --noconfirm nishanths-license-git # Auto generate a license for your awesome software
yay -S --needed --noconfirm git-ignore-bin        # CLI git ignore util.
yay -S --needed --noconfirm glow                  # CLI Markdow Reader.

sudo pacman --needed --noconfirm -S jdk-openjdk    # install latest jdk
sudo pacman --needed --noconfirm -S gradle         # install gradle
sudo pacman --needed --noconfirm -S nodejs npm     # install nodejs npm
sudo pacman --needed --noconfirm -S net-tools      # I need ifconfig
sudo pacman --needed --noconfirm -S networkmanager # network manager from command line
sudo pacman --needed --noconfirm -S clipmenu       # clipboard manager
yay -S --needed --noconfirm cava
gem install tmuxinator
# Grab a nerd font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
cd ~
chsh -l
chsh -s /bin/zsh

exec zsh # Restart zsh
