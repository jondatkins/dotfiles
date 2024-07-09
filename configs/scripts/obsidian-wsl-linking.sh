#!/bin/bash

echo "Starting Windows configuration"

WIN_USERPATH=$(wslpath $(wslvar USERPROFILE))
WIN_OBSIDIAN=$WIN_USERPATH/Documents/obsidian
WIN_VAULTSDIR=$WIN_OBSIDIAN/vaults
WSL_OBSIDIAN=~/obsidian

if [ ! -d "$WIN_VAULTSDIR" ]; then
	echo "Creating $WIN_VAULTSDIR"
	mkdir -p $WIN_VAULTSDIR
fi

if [ ! -L $WSL_OBSIDIAN ]; then
	echo "Symlinking $WIN_OBSIDIAN to $WSL_OBSIDIAN"
	ln -s "$WIN_OBSIDIAN" "$WSL_OBSIDIAN"
fi

echo "Windows configuration finished"
