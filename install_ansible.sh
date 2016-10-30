#!/bin/bash
set -x

echo "update pip version"
sudo pip install --upgrade pip

echo "install ansible"
sudo pip install ansible