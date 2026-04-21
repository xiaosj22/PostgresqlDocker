-- 创建数据库连接
create table DATABASE_LIST
(
    dbid       INTEGER not null,
    dbalias    VARCHAR(32) not null,
    provider   VARCHAR(32) not null,
    dbtype     VARCHAR(32) not null,
    servername VARCHAR(128) not null,
    dbname     VARCHAR(32) not null,
    dbuser     VARCHAR(32) not null,
    dbuserpswd VARCHAR(32) not null,
    others     VARCHAR(255),
    dbnote     VARCHAR(64)
)
