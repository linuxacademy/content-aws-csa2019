#!/bin/bash
yum update -y
yum install -y httpd
yum install -y wget
chkconfig httpd on
cd /var/www/html
wget https://raw.githubusercontent.com/linuxacademy/content-aws-csa2019/master/lesson_files/03_compute/Topic1_Fundamentals/05_SecurityGroups/index.html
wget https://raw.githubusercontent.com/linuxacademy/content-aws-csa2019/master/lesson_files/03_compute/Topic1_Fundamentals/05_SecurityGroups/catanimated.gif
wget https://raw.githubusercontent.com/linuxacademy/content-aws-csa2019/master/lesson_files/03_compute/Topic1_Fundamentals/05_SecurityGroups/rainbow.gif
wget https://raw.githubusercontent.com/linuxacademy/content-aws-csa2019/master/lesson_files/03_compute/Topic1_Fundamentals/05_SecurityGroups/penny.jpeg
wget https://raw.githubusercontent.com/linuxacademy/content-aws-csa2019/master/lesson_files/03_compute/Topic1_Fundamentals/05_SecurityGroups/roffle.jpeg
wget https://raw.githubusercontent.com/linuxacademy/content-aws-csa2019/master/lesson_files/03_compute/Topic1_Fundamentals/05_SecurityGroups/truffs.jpeg
wget https://raw.githubusercontent.com/linuxacademy/content-aws-csa2019/master/lesson_files/03_compute/Topic1_Fundamentals/05_SecurityGroups/winkie.jpeg
service httpd start