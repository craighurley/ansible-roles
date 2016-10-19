# Ansible role: yum-common

Configure yum: add EPEL, install common packages.

# Requirements

OS type(s):
- RedHat/CentOS

# Role Variables

`v_yum_packages`, a list of packages to install.

# Dependencies

None.

# Example Playbook

    - hosts: all
      become: true
      gather_facts: yes
      roles:
         - yum-common

# TODO

None.

# Author Information

https://github.com/craighurley/
