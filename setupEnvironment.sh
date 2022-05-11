#!/bin/bash


# *************************************************************** #
# *  We need to do a few things before we start.                * #
# *  Setup ssh keys for user.                                   * #
# *  Push the keys to all of the hosts.                         * #
# *  Install Ansible                                            * #
# *  Clone the repo                                             * #
# *************************************************************** #


# Automate the generation and distribution of keys
# https://www.ibm.com/developerworks/community/blogs/kevgrig/entry/automating_server_administration_with_ssh_keys?lang=en
#
mkdir ~/.ssh
mkdir ~/.ssh && chmod 700 ~/.ssh && cd ~/.ssh/
ssh-keygen -t ed25519 -b 4096 -f ~/.ssh/ansible
ssh-copy-id -i ~/.ssh/ansible user@host
ssh-add ~/.ssh/ansible

dnf install python-dnf python-pip python ansible
