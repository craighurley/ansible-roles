# Ansible role: sudo

Configure sudo.

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
    - sudo
```

## TODO

None.

## Author Information

<https://github.com/craighurley/>
