#!/bin/bash

set -e

echo "Installing Repository..."
apt-get install -y software-properties-common
apt-add-repository ppa:ansible/ansible
 
 

echo "Updating Ubuntu ..."
apt-get update -y

echo "Installing Ansible..."
apt-get install -y   ansible
#apt-get install -y python-pip
#pip install -U pip
#pip install ansible 



echo "Copying Ansible Configuration..."
cp /vagrant/ansible/ansible.cfg /etc/ansible/ansible.cfg

echo "Script  Endbootstrap_ansible.sh..."
 
