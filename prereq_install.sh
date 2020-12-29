#!/usr/bin/env bash
set -xe

# install Ansible
# sudo apt update -y && \
sudo apt install software-properties-common -y && \
# there is currently no Ubuntu 20.04 ppa for Ansible
#sudo apt-add-repository -y --update ppa:ansible/ansible && \
sudo apt install ansible