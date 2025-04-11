#!/bin/bash
echo "Validating /etc/fstab entries..."
mount -a -v 2>&1 | tee /tmp/fstab_mount_check.log
echo "Done. Check /tmp/fstab_mount_check.log for errors."