#!/bin/zsh
unsetopt BEEP
zle_highlight=('paste:none')


# source all .zsh config
for config (~/.config/zsh/*.zsh) source $config
# for scripts (~/dotfiles/configs/scripts/*.sh) source $scripts
# if [[ -d ]]
eval "$(zoxide init zsh)"

if [[ -d /usr/share/zsh/plugins ]]
then
  IS_PACMAN=true
  echo 'is pacmam is '$IS_PACMAN
else
  IS_PACMAN=false
  echo 'is pacmam is '$IS_PACMAN
fi

# Only run powerline if there is a config for it.
if [[ -f $HOME/.config/zsh/p10k.zsh ]]
then
  # source $HOME/.config/zsh/p10k2.zsh
  $IS_PACMAN && source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
  $IS_PACMAN || source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme
else
  echo "No file at $HOME/.config/zsh/p10k2.zsh"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# I'm using homebrew on WSL, and pacman / yay on Arch, so if 'IS_WSL', source files at these locations
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
$IS_PACMAN || source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
$IS_PACMAN || source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# pacman installs zsh plugins in /usr/share, so on arch source these files
$IS_PACMAN && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
$IS_PACMAN && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $HOME/.cargo/env
