#!/bin/zsh
unsetopt BEEP
zle_highlight=('paste:none')


# source all .zsh config
for config (~/.config/zsh/*.zsh) source $config
#for scripts (~/dotfiles/configs/scripts/*.sh) source $scripts
# if [[ -d ]]
eval "$(zoxide init zsh)"

if [[ -d /usr/share/zsh/plugins ]]
then
  IS_PACMAN=true
  # echo 'is pacmam is '$IS_PACMAN
else
  IS_PACMAN=false
  # echo 'is pacmam is '$IS_PACMAN
fi

# Only run powerline if there is a config for it.
if [[ -f $HOME/.config/zsh/p10k.zsh ]]
then
  source $HOME/.config/zsh/p10k.zsh
else
  echo "No file at $HOME/.config/zsh/p10k2.zsh"
fi

if [[ -f /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme ]]
then
  source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
fi
if [ -f /home/linuxbrew/.linuxbrew/share/powerlevel10k/powerlevel10k.zsh-theme ]
then
  source /home/linuxbrew/.linuxbrew/share/powerlevel10k/powerlevel10k.zsh-theme
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ -f /home/linuxbrew ]
then
  source /home/linuxbrew/.linuxbrew/share/powerlevel10k/powerlevel10k.zsh-theme
  $IS_PACMAN || eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  $IS_PACMAN || source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  $IS_PACMAN || source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
# This is for raspbian on the pi
if [ -d ~/powerlevel10k ]
then
  source ~/powerlevel10k/powerlevel10k.zsh-theme
fi

if [ -d ~/.zsh ]
then
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
  source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
# I'm using homebrew on WSL, and pacman / yay on Arch, so if 'IS_WSL', source files at these locations

# pacman installs zsh plugins in /usr/share, so on arch source these files
$IS_PACMAN && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
$IS_PACMAN && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [ -d ~/.cargo/env ]
then
  source $HOME/.cargo/env
fi

# Start tmux when I open my terminal, as described here https://unix.stackexchange.com/questions/43601/how-can-i-set-my-default-shell-to-start-up-tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  # exec tmux
  # exec t
fi

# source /home/linuxbrew/.linuxbrew/share/powerlevel10k/powerlevel10k.zsh-theme

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Created by `pipx` on 2025-06-22 13:30:25
export PATH="$PATH:/home/jon/.local/bin"

# Elijah Manoor's vim switcher script
alias nvim="NVIM_APPNAME=nvim-lazy nvim"
alias vim="NVIM_APPNAME=nvim-lazy nvim"
alias vi="NVIM_APPNAME=nvim-lazy nvim"
alias nvim-kick="NVIM_APPNAME=nvim-kickstart nvim"
# alias nvim-chad="NVIM_APPNAME=NvChad nvim"
# alias nvim-astro="NVIM_APPNAME=AstroNvim nvim"

function nvims() {
  items=("default" "kickstart" "nvim-lazy")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=nvim-lazy
  fi
  NVIM_APPNAME=$config nvim $@
}

bindkey -s ^a "nvims\n"

# git clone https://github.com/nvim-lua/kickstart.nvim.git ~/dotfiles/configs/nvim-kickstart

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
