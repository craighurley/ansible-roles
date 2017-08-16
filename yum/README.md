# Ansible role: yum

* Configure yum: add EPEL, install common packages.
* Install and configure yum-cron.
* Add docker repo and install docker.

## Requirements

OS type(s):

* RedHat/CentOS

## Role Variables

`v_yum_packages`, a list of common packages to install.
`v_yum_cron_*`, yum-cron settings.
`v_yum_docker_repo`, the docker repo.
`v_yum_docker_prerequisite_packages`, a list of prerequisite docker packages to install.
`v_yum_docker_packages`, a list of docker packages to install.

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
