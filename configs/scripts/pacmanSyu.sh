#!/bin/sh
sudo timeshift --create && sudo pacman -Syu &&
# fix for ruby version bug
gem install tmuxinator

echo "Would you like to reboot?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo 'rebooting...';reboot;;
        No ) echo 'please reboot PC when ready';exit;;
    esac
done
