#!/bin/bash
sudo apt update && sudo apt install -y nginx git
cd /var/www/html || exit
sudo rm -rf *
sudo git clone https://github.com/example/static-site.git .
sudo systemctl restart nginx