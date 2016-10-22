#!/bin/bash
set -x

echo "add ~/.screenrc"
rm -rf ~/.screenrc
cp ./data/.screenrc ~/.screenrc

echo "install docker"
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user

echo "logout user ec2-user and login again, then docker info"
