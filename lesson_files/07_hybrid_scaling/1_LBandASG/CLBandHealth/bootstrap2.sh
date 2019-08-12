#!/bin/bash
yum install -y httpd php git
service httpd start
cd
git clone https://github.com/linuxacademy/aws-csa-pro-2019.git
cp ./aws-csa-pro-2019/05_ha_scaling_ft/ELB/* /var/www/html
mv /var/www/html/htaccess /var/www/html/.htaccess
