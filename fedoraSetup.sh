#!/usr/bin/env bash

SETUPDIR="${HOME}/setup"
DOTFIELS="${HOME}/dotFiles"

echo "Ensuring no previous Setup"
# rm -rf "$SETUPDIR"

echo "Updating System"
sudo dnf distro-sync -y
# sudo dnf groupinstall "Ansible node" -y
sudo dnf install -y ansible git python-pip python-dnf python-pip python ansible ansible-lint pass

# echo "Getting dotfiles to progress"
# git clone git@github.com:Findarato/dotFiles.git "${DOTFIELS}"

# cd "${DOTFIELS}"
# git submodule update --init --recursive
# git submodule update --recursive --remote

echo "Working in the ${SETUPDIR} Directory"

mkdir -p "${SETUPDIR}"
cd "${SETUPDIR}"

echo "Starting Deployment"
cd "${SETUPDIR}"
git clone "https://github.com/Findarato/Ansible-Workstation.git" "${SETUPDIR}/Ansible-Workstation"

echo "Chaning to Ansible directory"
cd "${SETUPDIR}/Ansible-Workstation"

echo "Setting up Ansible Roles"
ansible-galaxy install -r "${SETUPDIR}/Ansible-Workstation/roles/requirements.yml"

echo "Running Ansible"
ansible-playbook -i localHosts setup_computer.yml --extra-var local_user=${USER} --ask-become

# Clean up the Setup
# echo "Cleaning up Setup directory"
# rm -rf ${SETUPDIR}


# Things to add into gsettings
