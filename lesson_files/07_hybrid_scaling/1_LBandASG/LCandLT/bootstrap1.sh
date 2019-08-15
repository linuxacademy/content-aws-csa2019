#!/bin/bash
yum install -y httpd php git

cd /var/www/html

wget https://github.com/linuxacademy/content-aws-csa2019/raw/master/lesson_files/07_hybrid_scaling/1_LBandASG/LCandLT/cat1.jpg
mv cat1.jpg cat.jpg
wget https://github.com/linuxacademy/content-aws-csa2019/raw/master/lesson_files/07_hybrid_scaling/1_LBandASG/LCandLT/index.php
mv /var/www/html/htaccess /var/www/html/.htaccess

sudo systemctl start httpd
sudo systemctl enable httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
