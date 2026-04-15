#FROM ubuntu:20.04
#FROM mcr.microsoft.com/devcontainers/base:ubuntu
FROM ubuntu:latest
# 更换源为阿里云源
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update  && apt-get clean
#    && apt-get -y install --no-install-recommends openjdk-21-jdk maven postgresql-client rabbitmq-server \
#
#    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
#    && mkdir -p /workspace && chown vscode /workspace
#    && usermod -aG docker vscode
    # Allow vscode user to run docker commands without sudo (optional)


# 安装必要的包
#RUN apt-get update && apt-get install -y \
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
#RUN sudo apt-get install -y openjdk-21-jdk
#
## Install Nacos (使用官方 Docker 镜像)
#RUN curl -s "https://github.com/nacos-group/nacos-docker/releases/download/release-3.2.1/nacos-server-3.2.1.tar.gz" | tar -zxvf -
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
