# Ansible role: tmux

Configure tmux for current user.

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
    - tmux
```

## TODO

None.

## Author Information

<https://github.com/craighurley/>
