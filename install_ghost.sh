#!/bin/bash
### Author: Yufei
### Date: 2017.06.29
### Desc: install ghost blog, https://ghost.org/ , https://hub.docker.com/_/ghost/

## exit when error 
set -e

echo "install docker ghost blog"
if [[ !(-e /rt/ghost) ]]; then
  echo "create dir /rt/ghost"
  sudo mkdir -p /rt/ghost 
  sudo chmod -R 777 /rt/ghost
fi

docker run -d -p 80:2368 -e url=http://your.domain --name kiwi-ghost -v /rt/ghost:/var/lib/ghost/content ghost:3.21.0-alpine
