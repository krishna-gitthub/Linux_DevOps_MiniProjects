#!/bin/bash
THRESHOLD=80
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "$(date): Disk usage is above ${THRESHOLD}% - cleaning logs" >> /var/log/disk_cleanup.log
  find /var/log -type f -name "*.log" -mtime +7 -exec rm -f {} \;
fi