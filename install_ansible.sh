#!/bin/bash

#echo "update pip version"
#sudo pip install --upgrade pip

echo "install ansible 2.2"
sudo pip install ansible==2.2.0.0

echo "create logs dir"
sudo mkdir -p /rt/logs/ansible
sudo chmod 664 /rt/logs/ansible
