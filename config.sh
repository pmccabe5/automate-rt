#!/bin/bash

apt update
apt install ansible python3 python3 pip -y 

mkdir /etc/ansible

cp ansible-config/hosts /etc/ansible/hosts
cp ansible-config/ansible.cfg /etc/ansible/ansible.config
