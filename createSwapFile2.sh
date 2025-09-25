# Turn off swap
sudo swapoff -a

# Delete old swap file
sudo rm -f /swap-hibernate/swapfile

# Make sure subvolume is non-COW and uncompressed
sudo chattr +C /swap-hibernate
sudo btrfs property set /swap-hibernate compression none

# Create swap file
sudo dd if=/dev/zero of=/swap-hibernate/swapfile bs=1M count=8192 status=progress
sudo chmod 600 /swap-hibernate/swapfile
sudo mkswap /swap-hibernate/swapfile
sudo swapon /swap-hibernate/swapfile
