#!/bin/bash
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEM=$(free | awk '/Mem/{printf("%.2f"), $3/$2 * 100.0}')
echo "CPU Load: $CPU%"
echo "Memory Usage: $MEM%"

if (( ${CPU%.*} > 70 || ${MEM%.*} > 80 )); then
  echo "High resource usage detected!" | wall
fi