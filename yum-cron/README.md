# Ansible role: yum-cron

Install and configure yum-cron.

# Requirements

OS type(s):
- RedHat/CentOS

# Role Variables

`v_yum_cron_*`, yum-cron settings.

# Dependencies

None.

# Example Playbook

    - hosts: all
      sudo: yes
      gather_facts: yes
      roles:
         - yum-cron

# TODO

None.

# Author Information

https://github.com/craighurley/
