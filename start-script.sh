#!/bin/bash

sudo apt -y update && sudo apt -y install nginx
sudo systemctl start nginx && sudo systemctl enable nginx
sudo echo “<h3> Hello World from $(hostname -f). Todays date is $(date) </h3>" > /usr/share/nginx/html/index.html

sudo apt -y install docker
sudo systemctl start docker
sudo usermod -aG docker ubuntu
sudo docker container run -p 8080:80 nginx