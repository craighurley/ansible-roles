# Ansible role: ssh

Configure SSH.

# Requirements

OS type(s):
- RedHat/CentOS

# Role Variables

TODO.

# Dependencies

    dependencies:
      - { role: users }

# Example Playbook

    - hosts: all
      become: true
      gather_facts: true
      roles:
         - ssh

# TODO

None.

# Author Information

https://github.com/craighurley/
