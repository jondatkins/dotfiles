#!/bin/bash
# Install tmux package manager only if it isn't already installed, assumes that $TMUX_PLUGIN_MANAGER_PATH has been
# set in tmux.conf
# if "test ! -d ~/.tmux/plugins/tpm" \
#    "run 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && ~/.tmux/plugins/tpm/bin/install_plugins'"
if [ -d "~/.tmux/plugins/tpm" ]; then
  echo "tpm is installed"
else
  echo "installing tpm"
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && ~/.tmux/plugins/tpm/bin/install_plugins
  ~/.tmux/plugins/tpm/tpm
fi
