#!/usr/bin/env bash

if [ "$EUID" -eq 0 ]
  then 
    echo "Please do not run as root"
    echo "$EUID"
  exit
fi

echo "Ensuring no previous Setup"
rm -rf "$HOME/setup"

echo "Updating System"
sudo dnf distro-sync -y
sudo dnf groupinstall "Ansible node" -y
sudo dnf install -y ansible git python-pip python-dnf python-pip python ansible ansible-lint

echo "Working in the $HOME Directory"

echo "Getting Dotfiles"
mkdir -p "$HOME/Documents/src"
cd "$HOME/Documents/src"
git clone https://github.com/Findarato/dotFiles.git dotFiles
cd "$HOME/Documents/src/dotFiles"

echo "Linking files"
. linkup.sh

source "$HOME/.bashrc"
source "$HOME/.ansible.cfg"

echo "Starting Deployment"
mkdir -p "$HOME/setup"
cd "$HOME/setup"
git clone https://github.com/Findarato/Ansible-Workstation.git Ansible-Workstaton

echo "Chaning to Ansible directory"
cd "$HOME/setup/Ansible-Workstaton"

echo "Setting up Ansible Roles"
ansible-galaxy install -r requirements.yml

echo "Running Ansible"
ansible-playbook -i localHosts setup.yml

#Clean up the Setup
echo "Cleaning up Setup directory"
#rm -rf $HOME/setup
