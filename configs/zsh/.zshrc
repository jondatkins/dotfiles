#!/bin/zsh
unsetopt BEEP
zle_highlight=('paste:none')


# source all .zsh config
for config (~/.config/zsh/*.zsh) source $config

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(zoxide init zsh)"

# Only run powerline if there is a config for it.
if [[ -f $HOME/.config/zsh/p10k.zsh ]]
then
  # source $HOME/.config/zsh/p10k2.zsh
  source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
else
  echo "No file at $HOME/.config/zsh/p10k2.zsh"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
