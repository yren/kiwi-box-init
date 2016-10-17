#!/bin/bash
set -x
echo "yum update"
sudo yum update -y

echo "install screen"
sudo yum install screen -y

echo "install docker"
sudo yum install -y docker && sudo service docker start
sudo usermod -aG docker ec2-user

echo "install wget"
sudo yum install wget -y

echo "install vim"
sudo yum install vim -y