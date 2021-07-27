#!/usr/bin/env bash
echo "Running Ansible"
ansible-playbook -i localHosts setup_computer.yml --extra-var local_user=${USER}