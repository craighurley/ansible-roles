# Ansible role: weechat

Configure weechat for current user.

## Requirements

OS type(s):

* RedHat/CentOS

## Role Variables

`v_weechat_sec_nick`: the IRC nick name you use.
`v_weechat_sec_password`: the password you use to auth on freenode.

## Dependencies

The following packages must be already installed:

* git
* docker
* python-docker-py

## Example Playbook

```
- hosts: all
  become: yes
  become_user: USERNAME
  gather_facts: no
  roles:
    - weechat
```

## TODO

None.

## Author Information

<https://github.com/craighurley/>
