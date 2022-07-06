#! /bin/bash

echo "docker-demo 停止容器"
docker stop docker-demo

echo "docker-demo 删除容器"
docker rm docker-demo

echo "docker-demo 删除镜像"
docker rmi docker-demo