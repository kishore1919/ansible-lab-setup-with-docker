# HOST image - used to create containers to be managed by master

# use builded custom_ubuntu
FROM custom_ubuntu:latest

# copy script from local disk to file system inside Docker image
COPY keys.sh /var/

# adjust file permissions to make run.sh executable
RUN chmod +x /var/keys.sh

