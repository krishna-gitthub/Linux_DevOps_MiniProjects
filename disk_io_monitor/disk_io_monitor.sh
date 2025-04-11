#!/bin/bash
echo "Disk I/O Stats (iostat):"
iostat -dx 1 3

echo "Top I/O Processes:"
iotop -b -n1 | head -10