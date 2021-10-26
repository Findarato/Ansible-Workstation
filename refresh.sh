#!/usr/bin/env bash


red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${red}Ansible ${reset}"

# ANSIBLE<<InputComesFromHERE
#      _              _ _     _
#     / \   _ __  ___(_) |__ | | ___
#    / _ \ | '_ \/ __| | '_ \| |/ _ \
#   / ___ \| | | \__ \ | |_) | |  __/
#  /_/   \_\_| |_|___/_|_.__/|_|\___|
# InputComesFromHERE

# echo ${ANSIBLE}
ansible-playbook -i localHosts setup_computer.yml --extra-var local_user=${USER}