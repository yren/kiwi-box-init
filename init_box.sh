#!/bin/bash

echo "add ~/.screenrc"
rm -rf ~/.screenrc
cp ./data/.screenrc ~/.screenrc

echo "install docker"
sudo yum update -y
# it looks like AMI only have one version docker
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user

echo "logout user ec2-user and login again, then docker info"
