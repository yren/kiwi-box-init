#!/bin/bash
set -x

echo "install docker kiwi jenkins"
mkdir -p ~/.m2/repository

sudo mkdir -p /rt/jenkins_home
sudo chmod -R 777 /rt/jenkins_home
export HOST_J_HOME="/rt/jenkins_home"

docker run -d --name="jenkins" \
-p 80:8080 -p 60000:50000 \
--restart=always \
-v $HOST_J_HOME:/var/jenkins_home/ \
-v /var/run/docker.sock:/var/run/docker.sock \
-e "HOST_J_HOME=${HOST_J_HOME}" \
yren/kiwi-jenkins:0.1
