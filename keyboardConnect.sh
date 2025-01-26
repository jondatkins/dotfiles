#!/usr/bin/env bash
# Toggle connection to bluetooth device
# connects my keyboard via  bluetooth, script from:
# https://stackoverflow.com/questions/57991955/executing-a-shell-script-to-automatically-connect-to-my-bluetooth-speaker-with-c#:~:text=bash%20%2D%20Executing%20a%20shell%20script%20to,bluetooth%20speaker%20with%20cron%20%2D%20Stack%20Overflow.
mac="EC:19:78:AB:3E:4A" # DEH-4400BT

if bluetoothctl info "$mac" | grep -q 'Connected: yes'; then
  echo "Turning off $mac"
  bluetoothctl disconnect || echo "Error $?"
else
  echo "Turning on $mac"
  # turn on bluetooth in case it's off
  rfkill unblock bluetooth

  bluetoothctl power on
  bluetoothctl connect "$mac"
  sink=$(pactl list short sinks | grep bluez | awk '{print $2}')

  if [ -n "$sink" ]; then
    pacmd set-default-sink "$sink" && echo "OK default sink : $sink"
  else
    echo could not find bluetooth sink
    exit 1
  fi
fi
