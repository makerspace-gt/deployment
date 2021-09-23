#!/bin/bash

# install requirements
sudo apt -y install ansible git

# clone repository
rm -rf /tmp/deployment
git clone https://github.com/makerspace-gt/deployment.git /tmp/deployment
cd /tmp/deployment

# deploy via ansbile
# https://galaxy.ansible.com/docs/using/installing.html
ansible-galaxy install -r requirements.yml
ansible-playbook deployment.yml --extra-vars user=$USER
