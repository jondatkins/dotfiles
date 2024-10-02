#!/usr/bin/env bash

# exec_always --no-startup-id xidlehook --not-when-audio --not-when-fullscreen --detect-sleep --timer 600 "light -S 40" "light -I" --timer 120 "$LOCK_COMMAND" "light -I" --timer 60 "systemctl suspend" "light -I"
# Only exported variables can be used within the timer's command.
export PRIMARY_DISPLAY="$(xrandr | awk '/ primary/{print $1}')"
export SECONDARY_DISPLAY="DVI-D-0"

# Run xidlehook
xidlehook \
  `# Don't lock when there's a fullscreen application` \
  --not-when-fullscreen \
  `# Don't lock when there's audio playing` \
  --not-when-audio \
  `# Dim the screen after 60 seconds, undim if user becomes active` \
  --timer 600 \
  'xrandr --output "$PRIMARY_DISPLAY" --brightness .1' \
  'xrandr --output "$SECONDARY_DISPLAY" --brightness .1' \
  `# Undim & lock after 10 more seconds` \
  --timer 300
# relies on 'lock' script. Use i3lock if lock is not present
'xrandr --output "$PRIMARY_DISPLAY" --brightness 1; lock' \
  '' \
  `# Finally, suspend an hour after it locks (3600)(or just 10 minutes / 600)` \
  --timer 600 \
  'systemctl suspend' \
  ''
