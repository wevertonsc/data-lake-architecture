#-------------------------------------------------------------
# Script Data Lake Architecture
# Name: Weverton S Castanho
# Date: MAY.9.2022
# docker-hadoop
#-------------------------------------------------------------

#!/bin/bash

# Installing supporting tools
sudo yum update -y
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install git -y
sudo ssh -T git@github.com -o StrictHostKeyChecking=no
sudo yum install pip -y
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
cd app
sudo systemctl start docker
sudo gpasswd -a $USER docker
sudo docker-compose up -d

