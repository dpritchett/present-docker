FROM ubuntu:14.04

# bootstrap
RUN apt-get update
RUN apt-get install ansible -qy
RUN apt-get install python-apt -qy


ADD . /opt/learn_you_some_pipes

WORKDIR /opt/learn_you_some_pipes

RUN ansible-playbook -i deploy/ansible_hosts deploy/site.yml
