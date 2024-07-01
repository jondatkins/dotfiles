#!/usr/bin/env bash
# Set up git hub
IS_WSL=false
if [[ $(grep -i Microsoft /proc/version) ]]; then
	IS_WSL=true
fi
$IS_WSL || sudo pacman -S github-cli
$IS_WSL && brew install gh
gh auth login
