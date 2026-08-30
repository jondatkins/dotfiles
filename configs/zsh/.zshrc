#!/bin/zsh
unsetopt BEEP
zle_highlight=('paste:none')


# source all .zsh config
for config (~/.config/zsh/*.zsh) source $config
#for scripts (~/dotfiles/configs/scripts/*.sh) source $scripts
# if [[ -d ]]
eval "$(zoxide init zsh)"

# Source bash functions here
source ~/dotfiles/configs/scripts/neovimSwitcher.sh

source $HOME/.config/zsh/p10k.zsh

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# This is for raspbian on the pi
if [ -d ~/powerlevel10k ]
then
  source ~/powerlevel10k/powerlevel10k.zsh-theme
fi

# pacman installs zsh plugins in /usr/share, so on arch source these files
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [ -d ~/.cargo/env ]
then
  source $HOME/.cargo/env
fi
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Created by `pipx` on 2025-06-22 13:30:25
export PATH="$PATH:/home/jon/.local/bin"
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
# Only changing the escape key to `jk` in insert mode, we still
# keep using the default keybindings `^[` in other modes
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
ZVM_SYSTEM_CLIPBOARD_ENABLED=true
ZVM_INIT_MODE=sourcing

# zvm_after_init_commands+=('[ -f ~/dotfiles/configs/zsh/fzf.zsh ] && source ~/dotfiles/configs/zsh/fzf.zsh')
zvm_after_init_commands+=('source <(fzf --zsh)')

export PATH=~/.npm-global/bin:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
