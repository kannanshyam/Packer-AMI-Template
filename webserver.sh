#!/bin/bash

sudo yum install httpd git -y

sudo systemctl restart httpd.service
sudo systemctl enable httpd.service

cd /tmp/
sudo git clone https://github.com/kannanshyam/blog-website.git
sudo cp -pr blog-website/* /var/www/html
sudo chown -R apache. /var/www/html/

sudo systemctl restart httpd.service
