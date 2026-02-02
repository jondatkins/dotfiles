#!/bin/bash

# Small delay to make sure Hyprland is ready
sleep 0.5

# Switch to workspace 1
hyprctl dispatch workspace 1

# Launch Ghostty
ghostty &
chromium https://www.boot.dev/dashboard &
