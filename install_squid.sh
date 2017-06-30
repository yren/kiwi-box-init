#!/bin/bash
### Author: Yufei Ren
### Date: 2017.06.30
### Desc: install docker squid on box
### reference https://hub.docker.com/r/sameersbn/squid , http://www.squid-cache.org/

## set exit when error
set -e
echo "install squid"

if [[ !(-e /rt/squid/cache) ]]; then
  echo "create dir /rt/squid/cache"
  sudo mkdir -p /rt/squid/cache
  sudo chmod 777 /rt/squid
  sudo chmod 777 /rt/squid/cache
fi

docker run --name kiwi-squid -d --restart=always \
  --publish 3128:3128 \
  --volume /rt/squid/squid.conf:/etc/squid3/squid.conf \
  --volume /rt/squid/cache:/var/spool/squid3 \
  sameersbn/squid:3.3.8-23

