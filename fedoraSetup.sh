#!/usr/bin/env bash

if [ "$EUID" -eq 0 ]; then
    echo "Please do not run as root"
    echo "$EUID"
    exit
fi

SETUPDIR="$HOME/setup/"

echo "Ensuring no previous Setup"
rm -rf "$SETUPDIR"

echo "Updating System"
sudo dnf distro-sync -y
sudo dnf groupinstall "Ansible node" -y
sudo dnf install -y ansible git python-pip python-dnf python-pip python ansible ansible-lint

echo "Working in the $SETUPDIR Directory"

mkdir -p "$SETUPDIR"
cd "$SETUPDIR"

if [ ! -d "$HOME/Enpass" ]; then
    #This is needed for Enpass
    sudo dnf install -y libXScrnSaver
    wget "https://dl.sinew.in/linux/setup/5-6-0/Enpass_Installer_5.6.0" -O EnpassInstaller
    chmod +x EnpassInstaller
    ./EnpassInstaller
fi

wget "https://raw.githubusercontent.com/Findarato/dotFiles/master/.bashrc" -O "$HOME/.bashrc"
wget "https://raw.githubusercontent.com/Findarato/dotFiles/master/.ansible.cfg" -O "$HOME/.ansible.cfg"

source "$HOME/.bashrc"
export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass.txt


echo "Starting Deployment"
cd "$SETUPDIR"
git clone "https://github.com/Findarato/Ansible-Workstation.git" "$SETUPDIR/Ansible-Workstaton"

echo "Chaning to Ansible directory"
cd "$SETUPDIR/Ansible-Workstaton"

echo "Setting up Ansible Roles"
ansible-galaxy install -r requirements.yml

echo "Running Ansible"
ansible-playbook -i localHosts setup.yml

#Clean up the Setup
echo "Cleaning up Setup directory"
#rm -rf $HOME/setup
