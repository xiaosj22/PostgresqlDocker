-- 直接修改 postgres 密码（启动自动执行）
ALTER USER postgres PASSWORD '123456';
-- 啦啦啦啦啦
-- 自动创建数据库
CREATE DATABASE reportdb;

-- 自动创建用户
CREATE USER dbusrreport WITH PASSWORD 'sub';
GRANT ALL PRIVILEGES ON DATABASE reportdb TO dbusrreport;
