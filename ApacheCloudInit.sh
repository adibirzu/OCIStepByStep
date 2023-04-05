#!/bin/bash
sudo su
yum -y install httpd
echo "<p> This is My Instance! </p>" >> /var/www/html/index.html
sudo systemctl enable httpd
sudo systemctl start httpd
sudo firewall-cmd --add-service=httpd --permanent
sudo firewall-cmd --reload
