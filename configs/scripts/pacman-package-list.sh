#!/bin/sh
# generate a list of packages installed by pacman without version info.
# assumes that there's an env var 'DOTFILES'.
if [ -d "$DOTFILES" ]; then
	pacman -Qqe >$DOTFILES/packages
else
	pacman -Qqe >~/packages
fi
