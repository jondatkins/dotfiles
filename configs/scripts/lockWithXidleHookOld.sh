#!/usr/bin/env bash

xidlehook --not-when-audio --not-when-fullscreen --detect-sleep --timer 6 "light -S 40" "light -I" --timer 10 "$LOCK_COMMAND" "light -I" --timer 6 "systemctl suspend" "light -I"
