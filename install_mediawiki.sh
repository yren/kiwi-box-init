#!/bin/bash
### Author: Yufei
### Date: 2018.11.05
### Desc: install mediawiki, https://hub.docker.com/_/mediawiki/

## exit when error 
set -e

echo "install docker mediawiki"
if [[ !(-e /rt/mediawiki_data) ]]; then
  echo "create dir /rt/mediawiki_data"
  sudo mkdir -p /rt/mediawiki_data
  sudo chmod -R 777 /rt/mediawiki_data
fi

docker run --name kiwi-mediawiki -p 80:80 -v /rt/mediawiki_data:/var/www/data -d mediawiki:1.31.1
