echo "Updating System"
dnf update -y
dnf install -y ansible git python-pip python-dnf python-pip python ansible

echo "Starting Deployment"
mkdir ~/setup
cd ~/setup
git clone https://github.com/Findarato/Ansible-Workstation.git .

echo "Setting up Ansible Roles"
ansible-galaxy install -r requirements.txt

echo "Running Ansible"
ansible-playbook -i localHosts ProvisionDesktop.yml

#Clean up the Setup
echo "Cleaning up Setup directory"
rm -rf ~/setup