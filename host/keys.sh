#!/bin/bash

# add a master public key to authorized_keys on host in order to allow SSH connections
cat /var/ans/master_key.pub >> /root/.ssh/authorized_keys

# start SSH server
/usr/sbin/sshd -D

# adding the maskter key to the ssh known hosts list
ssh-agent bash
ssh-add master_key


