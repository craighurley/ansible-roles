# Ansible role: chrony

Install and configure chrony, a NTP replacement more suited to VMs.

## Requirements

OS type(s):

* RedHat/CentOS

## Role Variables

`v_chrony_package`: the name of the chrony package.
`v_chrony_service`: the name of the chrony service.
`v_chrony_config`: the location of the chrony configuration file.
`v_ntp_servers`: a list of NTP servers to use.
`v_ntp_clients`: a list of clients that are allow to query this server.

## Dependencies

None.

## Example Playbook

```yaml
- hosts: all
  become: yes
  gather_facts: yes
  roles:
    - chrony
```

## TODO

None.

## Author Information

<https://github.com/craighurley/>
