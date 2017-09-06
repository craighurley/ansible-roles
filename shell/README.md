# Ansible role: shell

Configure shell for user.

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
  become_user: alice
  gather_facts: no
  roles:
    - shell
```

## TODO

None.

## Author Information

<https://github.com/craighurley/>
