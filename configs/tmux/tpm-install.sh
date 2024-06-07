#!/bin/bash
# Install tmux package manager only if it isn't already installed, assumes that $TMUX_PLUGIN_MANAGER_PATH has been
# set in tmux.conf
if [ -d "$TMUX_PLUGIN_MANAGER_PATH" ]; then
	echo "tpm is installed at $TMUX_PLUGIN_MANAGER_PATH"
else
	echo "installing tpm at $TMUX_PLUGIN_MANAGER_PATH"
	git clone https://github.com/tmux-plugins/tpm $TMUX_PLUGIN_MANAGER_PATH
fi
