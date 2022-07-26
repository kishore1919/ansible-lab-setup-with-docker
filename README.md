# ansible-lab-setup-with-docker
# Project overview

Instead of creating the multiple vm's for the training session we can take levarage of the **Docker**.
I have created a master with 3 host for practicing ansible with Docker with ssh enabled.

# Quick start

## Clone repository

Clone this git repository:

`git clone https://github.com/kishore1919/ansible-lab-setup-with-docker.git`

## Build images and run containers

Enter **ansible-lab-setup-with-docker** directory containing [docker-compose.yml](./ansible/docker-compose.yml) file.

`
cd ansible-lab-setup-with-docker/
`

Build docker images and run containers in the background (details defined in [docker-compose.yml](./ansible/docker-compose.yml)):

`docker-compose up -d --build`

Connect to **master node**:

`docker exec -it master01 bash`

Verify if network connection is working between master and managed hosts:

`ping -c 5 host01`

In order to group managed hosts for easier maintenance you can use groups in ansible [inventory file](./ansible/master/ansible/inventory).

You can check usage executing:

`docker cp --help`

## Cleanup

After you are done with your experiments or want to destroy lab environment to bring new one execute following commands.

Stop containers:

`docker-compose kill`

Remove containers:

`docker-compose rm`
