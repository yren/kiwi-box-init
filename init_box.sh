#!/bin/bash
set -x
echo "install screen"
sudo yum install screen

echo "install docker"
sudo yum install -y docker && service docker start
sudo usermod -aG docker ec2-user

echo "install wget"
sudo yum install wget -y

echo "install vim"
sudo yum install vim -y