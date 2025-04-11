#!/bin/bash
if ! command -v nginx &>/dev/null; then
  echo "Installing nginx..."
  sudo apt update && sudo apt install -y nginx
fi

sudo systemctl enable nginx
sudo systemctl start nginx

echo "Nginx is running:"
sudo systemctl status nginx | grep Active