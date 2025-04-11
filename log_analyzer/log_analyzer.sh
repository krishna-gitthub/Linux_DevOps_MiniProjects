#!/bin/bash
LOG="/var/log/syslog"
grep -i "error" $LOG | awk '{print $1, $2, $3, $5, $6, $7}' > ~/log_errors.csv
echo "Error logs exported to log_errors.csv"