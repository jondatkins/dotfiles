https://kskroyal.com/10-things-to-do-after-installing-arch-linux-2023/
sudo pacman -Syu
Add ILoveCandy to pacman.conf, e.g. 
sudo -e /etc/pacman.conf
Uncomment 'Color', and ParalledDownloads=5
Install pacman -S reflector
Then do:
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
Then update pacman:
sudo pacman -Sy

