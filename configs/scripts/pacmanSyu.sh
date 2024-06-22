#!/bin/sh
sudo timeshift --create && sudo pacman -Syu &&

echo "Would you like to reboot?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo 'rebooting...';reboot;;
        No ) echo 'please reboot PC when ready';exit;;
    esac
done
