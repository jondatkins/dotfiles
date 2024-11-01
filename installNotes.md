After running the archinstall script, you should have i3 wm with a basic terminal and dmenu launcher. You need to do:

sudo pacman -S git

sudo pacman-key --init
sudo pacman-key --populate
sudo pacman --needed --noconfirm -Syu

# Note: ArchWSL says this is optional, but THIS PACKAGE IS MANDITORY! It should be the first one installed

sudo pacman --needed --noconfirm -S archlinux-keyring
sudo pacman -S --needed --noconfirm git base-devel

Get timeshift as soon as possible, like this

sudo pacman -S timeshift
sudo timeshift --create

git clone <https://github.com/jondatkins/dotfiles>

At this point I want the terminal installed with zsh, tmux and neovim. I also want rofi and i3 configured.

sudo pacman -S kitty

go to the root of dotfiles, type ./install -l. This will link all your config files.

cd ~/.config/
rm -rf i3
cd ~/dotfiles/
./install -l

Now refresh the i3 wm with Win+Space+r.

This is covered by installBasicTerminalPackages.sh
