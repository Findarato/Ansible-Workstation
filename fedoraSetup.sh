#!/usr/bin/env bash

if [ "${EUID}" -eq 0 ]; then
    echo "Please do not run as root"
    echo "${EUID}"
    exit
fi

SETUPDIR="${HOME}/setup/"

echo "Ensuring no previous Setup"
rm -rf "$SETUPDIR"

echo "Updating System"
sudo dnf distro-sync -y
sudo dnf groupinstall "Ansible node" -y
sudo dnf install -y ansible git python-pip python-dnf python-pip python ansible ansible-lint pass

echo "Working in the ${SETUPDIR} Directory"

mkdir -p "${SETUPDIR}"
cd "${SETUPDIR}"


# wget "https://raw.githubusercontent.com/Findarato/dotFiles/master/.bashrc" -O "${HOME}/.bashrc"
wget "https://raw.githubusercontent.com/Findarato/dotFiles/master/.ansible.cfg" -O "${HOME}/.ansible.cfg"

# Clone password storage.
# git clone git@github.com:Findarato/pass.git "${HOME}/.password-store"

echo "Starting Deployment"
cd "${SETUPDIR}"
git clone "https://github.com/Findarato/Ansible-Workstation.git" "${SETUPDIR}/Ansible-Workstaton"

echo "Chaning to Ansible directory"
cd "${SETUPDIR}/Ansible-Workstaton"

echo "Setting up Ansible Roles"
ansible-galaxy install -r roles/requirements.yml

echo "Running Ansible"
ansible-playbook -i localHosts deploy.yml --extra-vars "local_user=${USER}" --vault-id "${HOME}/bin/ansiblePass.sh"

#Clean up the Setup
echo "Cleaning up Setup directory"
#rm -rf ${HOME}/setup
