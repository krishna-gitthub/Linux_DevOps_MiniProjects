#!/bin/bash
DEVICE="/dev/xvdf"
PARTITION="${DEVICE}1"

sudo growpart $DEVICE 1
sudo resize2fs $PARTITION

echo "EBS volume on $PARTITION resized successfully."