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
      become: true
      gather_facts: true
      roles:
         - yum-cron

# TODO

None.

# Author Information

https://github.com/craighurley/
