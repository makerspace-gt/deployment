#!/bin/bash

# install requirements
sudo apt -y install ansible git

# clone repository
rm -rf /tmp/deployment
git clone https://github.com/Igami/deployment.git /tmp/deployment
cd /tmp/deployment

# deploy vi ansbile
# https://galaxy.ansible.com/docs/using/installing.html
ansible-galaxy install -r requirements.yml
ansible-playbook deployment.yml
