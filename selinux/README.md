# Ansible role: selinux

Enable and apply various settings to SELINUX.

If SELINUX is not enabled, this role will enable SELINUX and then restart the server, before proceeding.

# Requirements

OS type(s):
- RedHat/CentOS

# Role Variables

None.

# Dependencies

None.

# Example Playbook

```yaml
- hosts: all
  become: true
  gather_facts: true
  roles:
     - selinux
```

# TODO

None.

# Author Information

https://github.com/craighurley/
