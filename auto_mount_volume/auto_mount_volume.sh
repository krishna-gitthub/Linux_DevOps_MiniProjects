#!/bin/bash
DEVICE="/dev/xvdf"
MOUNT_POINT="/mnt/data"

sudo mkfs.ext4 $DEVICE
sudo mkdir -p $MOUNT_POINT
sudo mount $DEVICE $MOUNT_POINT

UUID=$(sudo blkid -s UUID -o value $DEVICE)
echo "UUID=$UUID $MOUNT_POINT ext4 defaults,nofail 0 2" | sudo tee -a /etc/fstab