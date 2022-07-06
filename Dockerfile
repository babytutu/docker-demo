# 设置nginx
FROM nginx:latest
# 将dist文件夹中内容复制到 /usr/share/nginx/html 目录
COPY dist /usr/share/nginx/html
# 用本地的default.conf 配置文件替换nginx镜像里的默认配置
COPY default.conf /etc/nginx/conf.d/default.conf