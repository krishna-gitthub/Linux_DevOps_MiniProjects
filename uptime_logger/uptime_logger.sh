#!/bin/bash
HOSTS=("8.8.8.8" "github.com" "localhost")
LOGFILE="/var/log/uptime_monitor.log"

for HOST in "${HOSTS[@]}"; do
  if ping -c 1 "$HOST" &> /dev/null; then
    echo "$(date): $HOST is UP" >> "$LOGFILE"
  else
    echo "$(date): $HOST is DOWN" >> "$LOGFILE"
  fi
done