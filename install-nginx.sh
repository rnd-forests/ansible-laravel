#!/bin/bash

# Update apt cache
sudo apt update

# Install NGINX
sudo apt install -y nginx

# Start the nginx service
sudo systemctl start nginx

# Enable nginx service on system boot
sudo systemctl enable nginx

# Adjust the firewall using ufw (uncomplicated firewall) to allow
# access to the NGINX service. We're not going to configure SSL
# for our server here.
sudo ufw allow 'Nginx HTTP'
