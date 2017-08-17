# Ansible role: vim

Configure vim for current user.

## Requirements

OS type(s):

* RedHat/CentOS

After running this playbook for the first time, open vim and run `:PluginInstall`.

## Role Variables

None.

## Dependencies

None.

## Example Playbook

```
- hosts: all
  become: yes
  become_user: USERNAME
  gather_facts: no
  roles:
    - vim
```

## TODO

None.

## Author Information

<https://github.com/craighurley/>
