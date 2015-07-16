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
    # ssh depends on users, users depends on bash
    - ssh
    - locale
    - sudo
    - yum-update
    - yum-common
    - selinux
    - ntp
    - firewall
    - znc
```

## Running

To run the example playbook, you would issue something similar to this:

```bash
ansible-playbook playbook.yml -i inventory
```
