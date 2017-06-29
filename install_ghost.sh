#!/bin/bash
### Author: Yufei
### Date: 2017.06.29
### Desc: install ghost blog, https://ghost.org/ , https://hub.docker.com/_/ghost/

echo "install docker ghost blog"
sudo mkdir -p /rt/ghost 
sudo chmod -R 777 /rt/ghost

docker run -d -p 8080:2368 --name kiwi-ghost -v /rt/ghost:/var/lib/ghost ghost:0.11.10
