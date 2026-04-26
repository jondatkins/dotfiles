#!/bin/bash

# Small delay to make sure Hyprland is ready
sleep 0.5

# Switch to workspace 1
hyprctl dispatch workspace 1

# Launch Ghostty
ghostty &
chromium https://www.boot.dev/dashboard &
firefox &
tmux
# tmux &
# ~/dotfiles/configs/tmux/plugins/tmux-resurrect/scripts/restore.sh

# tmux start-server
#
# # Wait for session to appear (max ~5 seconds)
# for i in {1..10}; do
#   tmux has-session -t mysession 2>/dev/null && break
#   sleep 0.5
# done
#
# tmux attach-session -t boot
