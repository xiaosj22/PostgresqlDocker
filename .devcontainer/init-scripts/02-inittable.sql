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


create table report_list
(
    id           serial    primary key,  -- 自增主键
    report_id    integer not null,
    report_name  VARCHAR(64) not null,
    report_alias VARCHAR(64) null,
    report_notes VARCHAR(255),
    report_dbid  integer  null,
    report_type VARCHAR(255),
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

create table report_column_list
(
    id           serial    primary key,  -- 自增主键
    report_id    integer not null,
    column_id    integer  not null,
    column_name  VARCHAR(64) not null,
    column_alias VARCHAR(64) null,
    column_type  VARCHAR(32) null,
    column_notes VARCHAR(255),
    column_formart VARCHAR(255),
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

create table report_sql_list
(
    id           serial    primary key,  -- 自增主键
    report_id    integer not null,
    report_dbid  integer  not null,
    sql_before   Text  null,
    sql_content  TEXT not null,
    sql_notes    VARCHAR(255),
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

create table report_query_list
(
    id           serial    primary key,  -- 自增主键
    report_id    integer not null,
    query_id     VARCHAR(64) null,
    query_title  VARCHAR(64) null,
    -- 查询类型：日期、文本、数值等
    query_type   VARCHAR(32) null,
    -- 替换字符
    query_replace_id        VARCHAR(64) null,
    -- 替换文本
    query_replace_text     VARCHAR(64) null,
    -- 默认值
    query_default_value    VARCHAR(255),
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
