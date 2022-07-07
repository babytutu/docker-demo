#! /bin/bash

# 执行脚本需要传递参数，容器$1和镜像$2,只传递一个默认容器和镜像同名
container=$1
image=$1

if [ $2 ]; then
image=$2
fi

echo "清理可能存在的同名容器$container 和镜像$image"

echo "停止容器" $container
docker stop $container

echo "删除容器"
docker rm $container

echo "删除镜像"
docker rmi $image

echo "清理结束"

# 正常退出，可执行后续操作
exit 0