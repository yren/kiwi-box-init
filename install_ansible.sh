#!/bin/bash
set -x

echo "update pip version"
sudo pip install --upgrade pip

echo "install ansible"
sudo pip install ansible

echo "create logs dir"
sudo mkdir -p /rt/logs/ansible 
sudo chmod 777 /rt/logs/ansible