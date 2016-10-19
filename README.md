# ansible-roles

[![Build Status](https://travis-ci.org/craighurley/ansible-roles.svg?branch=master)](https://travis-ci.org/craighurley/ansible-roles)

A collection of Ansible roles.

# Examples

## playbook.yaml

Your main playbook could look something like this:

```yaml
---
- hosts: all
  become: true
  gather_facts: yes
  vars_files:
    - "./vars/private/users.yaml"
    - "./vars/private/znc.yaml"

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
ansible-playbook playbook.yaml -i inventory
```
