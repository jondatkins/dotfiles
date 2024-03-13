#!/bin/zsh
# Aliases...

# We're using lsd! The colors!
if [ -x "$(command -v lsd)" ]; then
    alias l='lsd -la'
    alias ls='lsd'
    alias ll='lsd -l'
    alias la='lsd -la'
else
  k
    alias l='ls -la'
    alias ls='ls'
    alias ll='ls -l'
    alias la='ls -la'
fi
alias cls='clear'
alias makeEx='chmod u+x'
alias clr='clear'
# aliases from Elijah Manor's dotfiles
alias weather="curl -4 wttr.in/derby"
alias vim="nvim"
alias diary="vim ~/diary.txt"
# alias vimrcs="source ~/.config/nvim/init.lua"
# alias tmuxrc="vim ${DOTFILES}/tmux/.config/tmux/tmux.conf"
alias tmuxrcs="tmux source-file ${DOTFILES}/configs/tmux/tmux.conf"
# TODO: Does this command need any other arguments (e.g. session number?)
alias retmux='tmux attach'
alias beep='echo -e "\a"'
alias dev='printf "%s\n" "${dev_commands[@]}" | fzf --height 20% --header Commands | xargs bash'
alias example='f() { echo Your arg was $1. };f'
alias python=/usr/bin/python3
alias lastFile='ls -t | head -n1'
alias nrun='npm run dev'
alias gs='git status'
# Alias: ipinfo
# Info: Look up your IP info. This also shows geolocation and ISP information. This returns a JSON response.
alias ipinfo='curl ipinfo.io'
alias myip="curl http://ipecho.net/plain; echo"
# launch windows chrome from wsl. I'm using my 'work session' here, i.e. Profile 1
alias browser='"${BROWSER}" --profile-directory="Profile 1"' 
alias clip='clip.exe'
alias win32yank='win32yank.exe'
