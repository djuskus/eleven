#!/bin/bash

sudo cp -rf eleven.conf /etc/nginx/sites-available/eleven
chmod 710 /var/lib/jenkins/workspace/eleven_ci_cd

sudo ln -s /etc/nginx/sites-available/eleven /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx has been started"

sudo systemctl status nginx
