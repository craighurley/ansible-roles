# Ansible role: yum-cron

* Configure yum: add EPEL, install common packages.
* Install and configure yum-cron.

## Requirements

OS type(s):

* RedHat/CentOS

## Role Variables

`v_yum_packages`, a list of packages to install.
`v_yum_cron_*`, yum-cron settings.

## Dependencies

None.

## Example Playbook

```yaml
- hosts: all
  become: yes
  gather_facts: yes
  roles:
    - yum
```

## TODO

None.

## Author Information

<https://github.com/craighurley/>
