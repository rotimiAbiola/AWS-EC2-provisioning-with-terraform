#!/bin/bash

# Install nginx and firewalld
sudo apt -y update && sudo apt -y install firewalld

# Modify the default index.html file
sudo echo “<h3> Hello World from $(hostname -f). Today's date is $(date) </h3>" > /var/www/html/index.html

# Whitelist the HTTP port
sudo firewall-cmd --zone=public --permanent --add-service=http
sudo firewall-cmd --reload

# Enable & Restart nginx
sudo service nginx restart
sudo systemctl start nginx && sudo systemctl enable nginx

