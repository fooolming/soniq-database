# 基于官方 MySQL 镜像
FROM mysql:8.0

# 设置环境变量
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=soniq_db
ENV MYSQL_USER=soniq_user
ENV MYSQL_PASSWORD=soniq_pass

# 将初始化脚本复制到容器中
COPY ./init.sql /docker-entrypoint-initdb.d/

# 默认暴露 3306 端口
EXPOSE 3306
