#!/usr/bin/env bash

export ANSIBLE_HOST_KEY_CHECKING=false
ansible-playbook -i inventory/hosts -u root enroll.yaml
