# ansible-roles

[![Build Status](https://travis-ci.org/craighurley/ansible-roles.svg?branch=master)](https://travis-ci.org/craighurley/ansible-roles)

A collection of Ansible roles.

# Examples

## playbook.yml

Your main playbook could look something like this:

```yaml
---
- hosts: all
  sudo: yes
  gather_facts: yes
  vars_files:
    - "./vars/private/users.yml"
    - "./vars/private/znc.yml"

  roles:
    - locale
    - yum-update
    - yum-common
    - yum-cron
    - ntp
    - bash
    - users
    - ssh
    - sudo
    - firewall
    - selinux
    - znc
```

## Running

To run the example playbook, you would issue something similar to this:

```bash
ansible-playbook playbook.yml -i inventory
```
