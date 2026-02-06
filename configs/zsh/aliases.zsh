#!/bin/zsh
# Aliases...

# We're using lsd! The colors!
if [ -x "$(command -v lsd)" ]; then
    alias l='lsd -la'
    alias ls='lsd'
    alias ll='lsd -l'
    alias la='lsd -la'
else
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
alias vi="nvim"
# Doing this stops nvim switcher from working
alias nvim="nvim"
# alias vimrcs="source ~/.config/nvim/init.lua"
# alias tmuxrc="vim ${DOTFILES}/tmux/.config/tmux/tmux.conf"
alias tmuxrcs="tmux source-file ${DOTFILES}/configs/tmux/tmux.conf"
alias mux=tmuxinator
# TODO: Does this command need any other arguments (e.g. session number?)
alias retmux='tmux attach'
alias ze="zellij -l welcome"
alias beep='echo -e "\a"'
alias dev='printf "%s\n" "${dev_commands[@]}" | fzf --height 20% --header Commands | xargs bash'
alias example='f() { echo Your arg was $1. };f'
# alias python=/usr/bin/python3
alias py=/usr/bin/python3
alias lastFile='ls -t | head -n1'
alias nrun='npm run dev'
alias gs='git status'
alias gitPull='git pull --rebase'
# Alias: ipinfo
# Info: Look up your IP info. This also shows geolocation and ISP information. This returns a JSON response.
alias ipinfo='curl ipinfo.io'
alias myip="curl http://ipecho.net/plain; echo"
# launch windows chrome from wsl. I'm using my 'work session' here, i.e. Profile 1
# alias browser='"${BROWSER}" --profile-directory="Profile 1"' 
# Windows specific, uncomment for WSL2
# alias clip='clip.exe'
# alias win32yank='win32yank.exe'
# What's my graphics driver?
alias graphics="lspci -k | grep -EA3 'VGA|3D|Display'"
alias at='alacritty-themes'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias copy='xsel --clipboard --input'
alias paste='xsel --clipboard --output'
alias copypath='pwd|xsel --clipboard --input'
alias dots="cd $DOTFILES; vim"
alias lg="lazygit"
alias lynx="lynx -vikeys -accept-all-cookies"
# alias w3m="w3m -conifg ~/.config/w3m/config www.duckduckgo.com"
alias refresh="exec zsh"
alias pi="ssh pi@raspberrypi"
# bat is batcat on ubuntu, but not arch. Either have a OS sniffing conditional here, or just remember 'batcat'
# alias bat="batcat"
# I always want images scaled to the window's size. So either scale-down or zoom.
alias feh="feh --scale-down -Z "
alias fehl="fehl.sh"
alias sysUpdate="pacmanSyu.sh"
alias pacmanSyu="pacmanSyu.sh"
alias suspend="sudo systemctl suspend"
alias keybinds="KeyHints.sh &"
alias keyhints="KeyHints.sh &"
# in your .bashrc/.zshrc/*rc
alias bathelp='bat --plain --language=help'
help() {
    echo 'foo'
    "$@" --help 2>&1 | bathelp
}
alias trash='gio trash'
alias rm='gio trash'
