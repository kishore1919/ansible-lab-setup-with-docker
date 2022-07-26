# BASE image - used as a starting point by MASTER and HOST images

# I use official Ubuntu: Latest image as a starting point
FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/India
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install required packages
RUN apt-get update \
    && apt-get install aptitude vim iputils-ping net-tools man vim tree openssh-server python3 python-pip -y \
    && rm -rf /var/lib/apt/lists/*

# ensure that required directories are created
RUN mkdir /var/run/sshd
RUN mkdir /root/.ssh

