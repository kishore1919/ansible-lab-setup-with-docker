# MASTER image - used to create the master container to manage hosts

# use builded custom_ubuntu
FROM custom_ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/India
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#RUN apt-get install -y tzdata


# install ansible package
RUN apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -y \
    && apt-get install -y ansible

RUN mkdir etc/ansible

RUN touch /etc/ansible/ansible.cfg
RUN touch /etc/ansible/inventory

# change working directory
WORKDIR /var/ans

# generate RSA key pair to allow master to communicate with managed nodes
# default private key passphrase is '12345' (not a good idea for production environment ;)
# I have used a key without a password if you want to use a password for the key run the below command
# RUN ssh-keygen -t rsa -N Test@123 -C "master key" -f master_key

RUN ssh-keygen -t rsa -C "master key" -f master_key
