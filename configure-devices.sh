#!/usr/bin/env bash

export ANSIBLE_HOST_KEY_CHECKING=false
ansible-playbook -i inventory/hosts.sh -u root configure.yaml
