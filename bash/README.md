# Ansible role: bash

Configure bash for all users.

## Requirements

OS type(s):

* RedHat/CentOS

## Role Variables

None.

## Dependencies

None.

## Example Playbook

```yaml
- hosts: all
  become: yes
  gather_facts: yes
  roles:
    - bash
```

## TODO

None.

## Author Information

<https://github.com/craighurley/>
