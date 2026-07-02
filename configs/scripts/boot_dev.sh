#!/usr/bin/env bash

firefox https://www.boot.dev/dashboard &
exec ghostty -e zsh -lc 'tmuxinator boot'
