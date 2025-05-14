#!/bin/bash

function send_notification() {
  volume=$(pamixer --get-volume)
  # dunstify -a "changeVolume" -u low -r "9993" -h int:value:"$volume" "Volume: ${volume}%" -t 2000
  # dunstify "changeVolume" -h int:value:${volume}
  # dunstify "changeVolume" -u low -r "9993" -h int:value:"$volume" "󰕾 : ${volume}%" -t 2000
  # dunstify -a "changeVolume" -u low -i audio-volume-high -t 300 -h string:x-dunst-stack-tag:volume -h int:value:"$volume" "󰕾 Vol: ${volume}%"
  dunstify -a "changeVolume" -u low -i audio-volume-high -t 300 -h string:x-dunst-stack-tag:volume -h int:value:"$volume" "Vol: ${volume}%"
}

case $1 in
up)
  # Set the volume on (if it was muted)
  pamixer -u >/dev/null
  pamixer -i 5 --allow-boost >/dev/null
  send_notification
  ;;
down)
  pamixer -u >/dev/null
  pamixer -d 5 --allow-boost >/dev/null
  send_notification
  ;;
mute)
  pamixer -t >/dev/null
  if $(pamixer --get-mute); then
    dunstify -i audio-volume-muted -t 2000 -r 9993 -u normal "Muted"
  else
    send_notification
  fi
  ;;
esac
