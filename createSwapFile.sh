#!/bin/bash
# Clean one-shot hibernation swap setup for OmaArch + Btrfs

# 1. Turn off all active swap
sudo swapoff -a

# 2. Remove old swap files if they exist
if [ -f /swap/swapfile ]; then
    echo "Removing old /swap/swapfile..."
    sudo rm -f /swap/swapfile
fi
if [ -f /swap-hibernate/swapfile ]; then
    echo "Removing old /swap-hibernate/swapfile..."
    sudo rm -f /swap-hibernate/swapfile
fi

# 3. Create /swap-hibernate subvolume if it doesn't exist
if [ ! -d /swap-hibernate ]; then
    echo "Creating /swap-hibernate subvolume..."
    sudo btrfs subvolume create /swap-hibernate
    sudo chattr +C /swap-hibernate
    sudo chmod 700 /swap-hibernate
else
    echo "/swap-hibernate subvolume already exists, skipping creation."
fi

# 4. Create new 8GiB swap file
echo "Creating 8GiB swap file..."
sudo dd if=/dev/zero of=/swap-hibernate/swapfile bs=1M count=8192 status=progress
sudo chmod 600 /swap-hibernate/swapfile
sudo mkswap /swap-hibernate/swapfile
sudo swapon /swap-hibernate/swapfile

# 5. Add swap to fstab if not already present
if ! grep -q '/swap-hibernate/swapfile' /etc/fstab; then
    echo '/swap-hibernate/swapfile none swap defaults 0 0' | sudo tee -a /etc/fstab
fi

# 6. Find root device (removing subvolume suffix)
ROOT_DEV=$(findmnt -no SOURCE / | sed 's/\[.*\]//')

# 7. Get root UUID
ROOT_UUID=$(blkid $ROOT_DEV | awk -F'"' '/UUID/ {print $2}')

# 8. Get swap file resume offset
RESUME_OFFSET=$(filefrag -v /swap-hibernate/swapfile | awk '{ if($1=="0:"){print $4} }' | sed 's/\.$//')

# 9. Print final bootloader line
echo ""
echo "--------------------------------------------"
echo "Copy this line into your arch.conf kernel options:"
echo "options root=UUID=$ROOT_UUID rw resume=UUID=$ROOT_UUID resume_offset=$RESUME_OFFSET"
echo "--------------------------------------------"
