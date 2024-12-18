#!/usr/bin/env bash
find / -regextype posix-extended -regex "/(sys|srv|proc)|.*/\.ccache/.*" -prune -o -type f \
  -exec bash -c 'file "{}" | grep -E "(32|64)-bit"' \; |
  awk -F: '{print $1}' |
  while read -r bin; do
    pacman -Qo "$bin" &>/dev/null || echo "$bin"
  done
