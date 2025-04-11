#!/bin/bash
cd /path/to/your/project || exit
git add .
git commit -m "Auto backup: $(date)"
git push origin main