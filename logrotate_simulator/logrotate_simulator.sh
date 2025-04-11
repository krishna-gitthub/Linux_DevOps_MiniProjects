#!/bin/bash
LOGDIR="/var/log/myapp"
ARCHIVE_DIR="/var/log/myapp/archive"
mkdir -p "$ARCHIVE_DIR"

find "$LOGDIR" -type f -name "*.log" -size +1M -exec mv {} "$ARCHIVE_DIR" \;
find "$ARCHIVE_DIR" -type f -exec gzip {} \;