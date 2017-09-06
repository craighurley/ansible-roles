# Ansible role: harden

* Configure kernel options.
* Enable and configure selinux.
* Disable firewalld, install and enable iptables, then configure iptables rules.
* Configure sshd.
* Configure tcpwrappers hosts.deny file.

## Requirements

OS type(s):

* RedHat/CentOS

## Role Variables

`v_firewall_inbound_ports`, a list of ports to open.

```yaml
---
v_firewall_inbound_ports:
  - port: "53"
    protocol: "udp"
  - port: "443"
    protocol: "tcp"
```

Note: Allowing tcp/22 is hardcoded in the template.

## Dependencies

None.

## Example Playbook

```yaml
- hosts: all
  become: yes
  gather_facts: yes
  roles:
    - harden
```

## TODO

None.

## Author Information

<https://github.com/craighurley/>
