echo "Updating System"
dnf update -y
dnf install -y ansible git python-pip python-dnf python-pip python ansible ansible-lint

echo "Setting up Ansible Roles"
ansible-galaxy install -r requirements.yml

echo "Running Ansible"
ansible-playbook -i localHosts setup.yml

#Clean up the Setup
echo "Cleaning up Setup directory"
rm -rf ~/setup
