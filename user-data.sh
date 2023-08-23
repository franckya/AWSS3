#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo apt-get install wget -y
wget https://mcdns-bucket.s3.amazonaws.com/index.html
sudo mv index.html /var/www/html/
sudo chown -R www-data:www-data /var/www/html/
sudo systemctl restart apache2
sudo systemctl enable apache2
