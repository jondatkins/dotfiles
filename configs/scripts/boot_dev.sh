#!/usr/bin/env bash

chromium https://www.boot.dev/dashboard &
exec ghostty -e zsh -lc 'tmuxinator boot'
