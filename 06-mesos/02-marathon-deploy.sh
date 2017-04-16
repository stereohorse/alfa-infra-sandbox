#!/usr/bin/env sh

set -x

ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory play-app.yml
