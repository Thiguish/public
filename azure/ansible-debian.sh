#!/bin/bash

# Update all packages that have available updates.
sudo apt update -y

# Install Python 3 and pip.
sudo apt install -y python3-pip

# Install Ansible.
pip3 install ansible[azure]

# Install Ansible modules and plugins for interacting with Azure.
ansible-galaxy collection install azure.azcollection

# Install required modules for Ansible on Azure
wget https://raw.githubusercontent.com/Thiguish/public/master/azure/requirements-azure.txt

# Install Ansible modules
sudo pip3 install -r requirements-azure.txt