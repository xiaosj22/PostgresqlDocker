FROM postgres:latest

# 设置数据卷
VOLUME /var/lib/postgresql/data

#COPY /workspaces/PostgresqlDocker/config/postpresql.conf  /var/lib/postgresql/data
#ENV POSTGRES_INITDB_ARGS="--data-checksums"

#若安装成功可查询：psql --version
#判断服务是否启动：ps aux | grep postgres
#查看token:echo $GITHUB_TOKEN
#访问本地端口
#curl -H "X-Github-Token: ghu_cLJl4aIdmI3MeT9bMTyskWnZJcSZq10cALYV" http://127.0.0.1:5432
#sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

#/var/lib/postgresql/data/postgresql.conf
# 设置环境变量，用于初始化数据库时设置用户名和密码
ENV POSTGRES_USER=dbbase
ENV POSTGRES_PASSWORD=sub
ENV POSTGRES_DB=dbbms

#安装docker-compose
#curl -L "https://github.com/docker/compose/releases/download/v2.10.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# run 执行貌似都不生效，后续都是进入控制台手动输入apt-get update 和 apt update才行
#apt-get install curl
RUN export DEBIAN_FRONTEND=noninteractive


RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    apt-get update -y && apt-get upgrade -y
RUN  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#    && apt -y install --no-install-recommends docker-compose-plugin
#    && apt -y install --no-install-recommends openjdk-21-jdk
#    maven postgresql-client rabbitmq-server
#    && mkdir -p /workspace && chown vscode /workspace
#    && usermod -aG docker vscode
    # Allow vscode user to run docker commands without sudo (optional)

#RUN apt-get install -y docker-compose
# 安装必要的包
#RUN apt update && apt install -y \
#    curl \
#    wget \
#    software-properties-common \
#    gnupg \
#    sudo \
#    postgresql \
#    postgresql-contrib \
#    libpq-dev \
#    build-essential \
#    python3-pip \
#    python3-dev \
#    python3-venv \
#    python3-psycopg2 \
#    && rm -rf /var/lib/apt/lists/*


#
## Install Java (OpenJDK)
#RUN sudo apt -y install --no-install-recommends openjdk-21-jdk
#
## Install Nacos (使用官方 Docker 镜像)
#RUN curl -O https://github.com/alibaba/nacos/releases/download/3.2.0/nacos-server-3.2.0.zip | tar -zxvf -
#RUN curl -O https://github.com/alibaba/nacos/releases/download/3.2.0/nacos-server-3.2.0.zip
#WORKDIR /home/nacos/nacos/bin
#RUN ./startup.sh -m standalone
#
## 配置 PostgreSQL
#RUN service postgresql start &&\
#    sudo -u postgres psql --command "CREATE USER docker WITH SUPERUSER PASSWORD 'docker';" &&\
#    sudo -u postgres createdb -O docker basedb
#
## 设置环境变量以使用 PostgreSQL
#ENV DATABASE_URL=postgresql://docker:docker@localhost/basedb

# 暴露 PostgreSQL 默认端口
EXPOSE 5432

# 设置默认的容器启动命令
CMD ["postgres"]
