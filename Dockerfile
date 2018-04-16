FROM debian:jessie

## Install ansible
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" > /etc/apt/sources.list.d/ansible.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 93C4A3FD7BB9C367 && \
    apt-get update && \
    apt-get install ansible git dos2unix apt-transport-https -y

CMD [ "ansible-playbook", "--version" ]
