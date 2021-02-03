#!/bin/bash
docker network create --subnet=10.20.0.0/24 mongodbnet

git clone https://github.com/jianhao2010303/develope-docker.git

cd mongo && mv * /usr/local

cd /usr/local/mongo 

#启动容器
docker-compose up -d