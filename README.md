# ansible-roles

[![Build Status](https://travis-ci.org/craighurley/ansible-roles.svg?branch=master)](https://travis-ci.org/craighurley/ansible-roles)

A collection of Ansible roles.

## Examples

### playbook.yaml

Your main playbook could look something like this:

```yaml
---
- hosts: all
  become: yes
  gather_facts: yes
  vars_files:
    - ./vars/private/yum-cron.yaml
    - ./vars/private/users.yaml
    - ./vars/private/weechat.yaml
    - ./vars/private/znc.yaml

  roles:
    - locale
    - shell
    - users
    - sudo
    - yum-update
    - yum
    - chrony
    - harden
    - vim
    - weechat
    - znc
```

### Running

To run the example playbook, you would issue something similar to this:

```sh
ansible-playbook playbook.yaml -i inventory
```
