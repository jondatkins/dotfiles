# Unload the btusb module, restart the bluetooth service and reload the module again
# post = after the computer wakes up
# remember to do
# sudo chmod +x /lib/systemd/system-sleep/bt
sudo tee /lib/systemd/system-sleep/bt <<EOT
#!/bin/sh
case $1 in
  post)
    modprobe -r btusb
    sleep 1
    service bluetooth restart
    sleep 1
    modprobe btusb
    ;;
esac
EOT
