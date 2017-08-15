# Ansible role: shell

Configure shell for all users.

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
    - shell
```

## TODO

None.

## Author Information

<https://github.com/craighurley/>
