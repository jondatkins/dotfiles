#!/bin/bash

bluetooth_mac="EC:19:78:AB:3E:4A"

if [ ! -f /usr/bin/bluetoothctl ]; then
  sudo pacman -S bluez-utils bluez
fi

# sudo systemctl restart bluetooth
# sudo systemctl enable bluetooth
systemctl is-active --quiet bluetooth || sudo systemctl start bluetooth
#Uncomment if you want to turn on bluetooth everytime your system turns on
#sudo systemctl enable bluetooth

(
  echo -e "power on\n"
  echo -e "agent on\n"
  echo -e "default-agent\n"
  echo -e "untrust"$bluetooth_mac"\n"
  echo -e "remove"$bluetooth_mac"\n"
  sleep 1
  echo -e "scan on\n"
  sleep 5
  # echo -e "pair "$bluetooth_mac"\n"
  # sleep 1
  # echo -e "connect "$bluetooth_mac"\n"
  sleep 1
  # echo -e "trust "$bluetooth_mac"\n"
  # sleep 1
  echo -e "exit\n"
) | bluetoothctl
