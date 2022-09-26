#! /bin/bash
ansible-galaxy collection install community.general
ansible-playbook -i inventory main.yml
