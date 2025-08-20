#!/usr/bin/env bash
# Set up git hub
IS_WSL=false
if [[ $(grep -i Microsoft /proc/version) ]]; then
	IS_WSL=true
fi
$IS_WSL || sudo pacman -S github-cli

if ! which brew >/dev/null; then
	echo -e "Command not found! Install? (y/n) \c"
	read
	if "$REPLY" = "y"; then
		$IS_WSL && brew install gh
	fi
fi
gh auth login
