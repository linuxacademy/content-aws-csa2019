#!/bin/bash
yum install -y httpd php git

cd /var/www/html
wget https://github.com/linuxacademy/content-aws-csa2019/raw/master/lesson_files/07_hybrid_scaling/1_LBandASG/ALB/dog1.jpg
mv dog1.jpg dog.jpg
wget https://github.com/linuxacademy/content-aws-csa2019/raw/master/lesson_files/07_hybrid_scaling/1_LBandASG/ALB/index.php
mv /var/www/html/htaccess /var/www/html/.htaccess

mkdir /var/www/html/dog
cp /var/www/html/dog.jpg /var/www/html/dog
cp /var/www/html/index.php /var/www/html/dog
cp /var/www/html/.htaccess /var/www/html/dog


sudo systemctl start httpd
sudo systemctl enable httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
