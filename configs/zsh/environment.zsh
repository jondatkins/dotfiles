#!/bin/sh
#█▓▒░ clean home
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CACHE_HOME="$HOME"/.local/cache
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:=/tmp}"
export ZDOTDIR="$HOME"/.config/zsh
export DOTFILES="$HOME"/dotfiles

#█▓▒░ paths
# export PATH=/usr/sbin:/usr/local/sbin:$HOME/.local/bin:$CARGO_HOME/bin:$GOPATH/bin:$NPM_CONFIG_PREFIX/bin:$TFENV/bin:$XDG_DATA_HOME/nvim/mason/bin:$PATH
export PATH="$HOME/neovim/bin:$PATH"

export PATH=/usr/sbin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$XDG_CONFIG_HOME/bin:$PATH
export PATH=$XDG_CONFIG_HOME/rofi/scripts:$PATH
export PATH=$HOME/dotfiles/configs/scripts:$PATH
export PATH=$HOME/dotfiles/configs/hypr/scripts:$PATH
export PATH=$CARGO_HOME/bin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=$NPM_CONFIG_PREFIX/bin:$PATH
export PATH=$XDG_DATA_HOME/nvim/mason/bin:$PATH
export PATH=$TFENV/bin:$PATH
export PATH=$HOME/.local/share/nvim/mason/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin/java/jdk-20.0.1/bin:$PATH
export PATH=$HOME/.local/bin/gradle/gradle-8.1.1/bin:$PATH
[ -z ${WSLENV+x} ] || export PATH="${PATH:+"$PATH:"}$HOME/bin/win-bash-xclip-xsel"
export PATH=$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH
export PATH=$HOME/.local/share/gem/ruby/3.3.0/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=snap/bin:$PATH
export TERM=xterm-256color
# export PATH=$HOME/.fzf/bin:$PATH


#█▓▒░ preferred text editor
export EDITOR=nvim
export VISUAL=nvim

#█▓▒░ language
export LC_COLLATE=en_GB.UTF-8
export LC_CTYPE=en_GB.UTF-8
export LC_MESSAGES=en_GB.UTF-8
export LC_MONETARY=en_GB.UTF-8
export LC_NUMERIC=en_GB.UTF-8
export LC_TIME=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8
export LANGUAGE=en_GB.UTF-8
export LESSCHARSET=utf-8

#█▓▒░ no mosh titles
export MOSH_TITLE_NOPREFIX=1

#█▓▒░ gpg cli in the tty
GPG_TTY=$(tty)
export GPG_TTY
# /usr/lib/jvm/java-22-openjdk/bin/java
# export JAVA_HOME=/usr/lib/jvm/java-24-openjdk
# use IS_WSL variable for Windows Subsystem for Linux
IS_WSL=false
if [[ $(grep -i Microsoft /proc/version) ]]; then
   IS_WSL=true
fi
export IS_WSL

# launch windows chrome from wsl
# export BROWSER='/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe' 
# $IS_WSL && export BROWSER=wslview || export BROWSER=firefox
$IS_WSL && export BROWSER=wslview || export BROWSER=chromium

export NVM_DIR=~/.config/nvm
export W3M_DIR=~/.config/w3m
export WWW_HOME=~/.config/w3m
export LYNX_CFG=~/dotfiles/configs/lynx/lynx.cfg
export DISPLAY=:0.0
# Possible fix for Dolphin's mime type problem
# https://bbs.archlinux.org/viewtopic.php?pid=2167442
export XDG_MENU_PREFIX=arch- kbuildsycoca6

#█▓▒░ man
# export MANPAGER='nvim --cmd ":lua vim.g.noplugins=1" +Man!'
# export MANWIDTH=999
# export PAGER="most"
# → Use Bat-extras for man pages in zsh/bash:
eval "$(batman --export-env)"
# → Use Bat (by itself) for man pages:
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANPAGER="less -R --use-color -Dd+r -Du+b"
