#!/bin/bash
set -e 
ES_VERSION=7.10.2
\cp Dockerfile.template Dockerfile
sed -i "s#{{ES_VERSION}}#${ES_VERSION}#g" Dockerfile
sudo docker build --no-cache   -t reg.firstshare.cn/docker.io/elasticsearch:${ES_VERSION}-customize .
rm -f Dockerfile
docker push reg.firstshare.cn/docker.io/elasticsearch:${ES_VERSION}-customize
