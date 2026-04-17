# PostgresqlDocker
# 这里是学习搭建springboot服务
1、创建PostgreSQL数据库
坑：postgresql需要设置数据库挂载卷
   数据库版本，这里是codespace条件有限的情况下建议用轻量版否则安装报错

psql -U postgres -h localhost -d postgres
