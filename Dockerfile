FROM mysql:8.0

# 初始化数据库
COPY init.sql /docker-entrypoint-initdb.d/

# 暴露 3306 端口
EXPOSE 3306
