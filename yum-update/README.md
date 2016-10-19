# Ansible role: yum-update

This role updates all packages to the latest version and can be included when initially provisioning a server.  It can also be called on it's own to perform an update any time in the future.

# Requirements

OS type(s):
- RedHat/CentOS

# Role Variables

None.

# Dependencies

None.

# Example Playbook

    - hosts: all
      become: true
      gather_facts: true
      roles:
         - yum-update

    ansible-playbook ansible/update.yaml -i ./path/to/inventory --user=johndoe --private-key=./path/to/id_rsa

# TODO

None.

# Author Information

https://github.com/craighurley/
