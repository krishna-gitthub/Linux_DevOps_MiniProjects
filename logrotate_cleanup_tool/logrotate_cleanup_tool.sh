#!/bin/bash
TARGET_DIR="/var/log"
MAX_SIZE_MB=500
ARCHIVE_DIR="/var/log/archive"

mkdir -p "$ARCHIVE_DIR"
USAGE_MB=$(du -sm $TARGET_DIR | cut -f1)

if [ "$USAGE_MB" -gt "$MAX_SIZE_MB" ]; then
  echo "$(date): Rotating and archiving logs..." >> /var/log/disk_cleanup.log
  find $TARGET_DIR -name "*.log" -type f -exec gzip {} \;
  find $TARGET_DIR -name "*.gz" -exec mv {} "$ARCHIVE_DIR" \;
fi