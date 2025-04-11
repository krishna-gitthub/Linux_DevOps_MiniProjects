#!/bin/bash
echo "Top inode usage by directory:"
df -i /
for dir in /*; do
  [ -d "$dir" ] && find "$dir" -xdev -type f | wc -l | awk -v d="$dir" '{print d ": " $1 " files"}'
done | sort -k2 -n -r | head -10