![GitHub last commit](https://img.shields.io/github/last-commit/Findarato/Ansible-Workstation.svg?style=popout) ![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Findarato/Ansible-Workstation.svg)
# Ansible-Workstation

This playbook is how I setup my fedora deployments.

The only linting errors are below, and I do not really care to fix them
```bash
ANSIBLE0010 Package installs should not use latest
/home/jharry/setup/Ansible-Workstaton/roles/developer/tasks/main.yml:32
Task/Handler: Install python modules with pip

ANSIBLE0004 Git checkouts must contain explicit version
/home/jharry/setup/Ansible-Workstaton/roles/🔵 base/tasks/main.yml:38
Task/Handler: Clone dotfiles repos

```

