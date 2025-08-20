#!/usr/bin/env bash
#█▓▒░ aliases
alias c="clear"
alias cls="clear"
alias clr="clear"
alias ll="ls -lahF --color=always"
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
alias e="$EDITOR"
alias se="sudo $EDITOR"
alias ec='nvim --cmd ":lua vim.g.noplugins=1" ' #nvim --clean

#general
alias weather="curl -4 wttr.in/derby"
alias wthr="curl -4 wttr.in/derby"
# alias vim="nvim"

#source config
alias vimrcs="source ${XDG_CONFIG_HOME}/nvim/init.lua"
alias tmuxrc="vim ${XDG_CONFIG_HOME}/tmux/tmux.conf"
alias tmuxrcs="tmux source-file ${XDG_CONFIG_HOME}/tmux/tmux.conf"

#lazy
alias "cd.."="cd ../"
alias up="cd .."
alias rmrf="rm -rf"
alias psef="ps -ef"
alias ZZ="exit"
alias makeEx="chmod u+x"

#git
alias ga="git add"
alias gb="git branch"
alias gc="git clone"
alias gcm="git commit -m"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcs="git commit -S -m"
alias gd="git difftool"
alias gdc="git difftool --cached"
alias gf="git fetch"
alias gg="git graph"
alias ggg="git graphgpg"
alias gm="git merge"
alias gp="git push"
alias gpr="gh pr create"
alias gr="git rebase -i"
alias gs="git status -sb"
alias gt="git tag"
alias gu="git reset @ --" #think git unstage
alias gx="git reset --hard @"

#overrides
alias sudo="sudo "  # expand aliases with sudo
alias mkdir="mkdir -p"
alias cp="cp -r"
alias scp="scp -r"
alias vimdiff="nvim -d --cmd ':lua vim.g.noplugins=1'"
alias apt="sudo apt"
alias pacman="sudo pacman"
alias doc="sudo docker"
alias docker="sudo docker"
alias systemctl="sudo systemctl"
alias proxychains="proxychains -q"
alias ag="ag --color --color-line-number '0;35' --color-match '46;30' --color-path '4;36'"
alias aga="ag --hidden --color --color-line-number '0;35' --color-match '46;30' --color-path '4;36'"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'


alias exzsh='exec zsh'
alias pacInstall='sudo pacman --noconfirm --needed -S'
alias yayInstall='yay --noconfirm --needed -S'
alias yayRemove='yay -R'
alias pacRemove='sudo pacman -Rs'
# alias clip.exe='clip'
# alias explorer.exe='explorer'

#last file modified / touched
alias lastFile='ls -t | head -n1'
# handy node shortcut
alias nrun='npm run dev'


# Alias: ipinfo
# Info: Look up your IP info. This also shows geolocation and ISP information. This returns a JSON response.
alias ipinfo='curl ipinfo.io'
alias myip="curl http://ipecho.net/plain; echo"
#curl
alias curlh="curl -sILX GET"
alias curld="curl -A \"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36\""
alias curlm="curl -A \"Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) CriOS/28.0.1500.12 Mobile/10B329 Safari/8536.25\""

#tmux
alias retmux='tmux attach'
alias tmxKill="tmux kill-session -t 0"

#silly
alias xyzzy="echo nothing happens"
alias lol="base64 </dev/urandom | lolcat"
alias matrix="cmatrix -b"
alias zen="while :; do bonsai -l -b 2 -c oO0 -t 0.5; sleep 10; done"
