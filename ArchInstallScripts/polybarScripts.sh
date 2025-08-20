cd ~
# TODO add open weather app etc here.
curl -sf https://github.com/polybar/polybar-scripts/blob/master/polybar-scripts/system-usb-udev/95-usb.rules --output 95-usb.rules
sudo mv 95-usb.rules /etc/udev/rules.d/95-usb.rules
curl -sf https://raw.githubusercontent.com/polybar/polybar-scripts/master/polybar-scripts/system-usb-udev/95-usb.rules --output ~/dotfiles/configs/scripts/95-usb.rules
sudo cp ~/dotfiles/configs/scripts/95-usb.rules /etc/udev/rules.d/95-usb.rules
curl -sf https://raw.githubusercontent.com/polybar/polybar-scripts/master/polybar-scripts/system-usb-udev/system-usb-udev.sh --output ~/dotfiles/configs/scripts/system-usb-udev
curl -sf https://raw.githubusercontent.com/polybar/polybar-scripts/master/polybar-scripts/openweathermap-fullfeatured/openweathermap-fullfeatured.sh --output ~/dotfiles/configs/scripts/polybar-weathermap.sh
curl -sf https://raw.githubusercontent.com/polybar/polybar-scripts/master/polybar-scripts/system-bluetooth-bluetoothctl/system-bluetooth-bluetoothctl.sh --output ~/dotfiles/configs/scripts/system-bluetooth
cd ~
