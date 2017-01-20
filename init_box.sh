#!/bin/bash
set -x

echo "add ~/.screenrc"
rm -rf ~/.screenrc
cp ./data/.screenrc ~/.screenrc

echo "install docker"
sudo yum update -y
# specify docker version to 1.12.1, instead of use yum install docker
sudo yum install -y docker-1.12.1
sudo service docker start
sudo usermod -a -G docker ec2-user

echo "logout user ec2-user and login again, then docker info"
