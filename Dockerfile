FROM ubuntu:14.04
MAINTAINER Daniel Pritchett <dpritchett@gmail.com>

# bootstrap
RUN apt-get update
RUN apt-get install ansible -qy
RUN apt-get install python-apt -qy

# upload playbook
ADD       .   /opt/present-docker
WORKDIR   /opt/present-docker

# run playbook
RUN ansible-playbook -i deploy/ansible_hosts deploy/site.yml
