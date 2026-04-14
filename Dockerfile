FROM ubuntu:20.04

# 安装必要的包
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    software-properties-common \
    gnupg \
    sudo \
    postgresql \
    postgresql-contrib \
    libpq-dev \
    build-essential \
    python3-pip \
    python3-dev \
    python3-venv \
    python3-psycopg2 \
    && rm -rf /var/lib/apt/lists/*


# 配置 PostgreSQL
RUN service postgresql start &&\
    sudo -u postgres psql --command "CREATE USER docker WITH SUPERUSER PASSWORD 'docker';" &&\
    sudo -u postgres createdb -O docker basedb

# 设置环境变量以使用 PostgreSQL
ENV DATABASE_URL=postgresql://docker:docker@localhost/basedb
