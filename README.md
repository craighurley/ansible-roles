# ansible-roles

[![Build Status](https://travis-ci.org/craighurley/ansible-roles.svg?branch=master)](https://travis-ci.org/craighurley/ansible-roles)

A collection of Ansible roles.

# Examples

## playbook.yml

Your main playbook could look something like this:
```yaml
---
- hosts: all
  sudo: yes
  gather_facts: yes
  vars_files:
    - "./private/vars/users.yml"
  vars:
    v_restart_delay: 60
    v_restart_timeout: 300

  roles:
    # ssh depends on users, users depends on bash
    - ssh
    - locale
    - sudo
    - yum-update
    - yum-common
    - selinux
    - ntp
    - firewall

  post_tasks:
  - name: restart server
    command: shutdown -r +1 "Restart triggered by Ansible"
    async: 0
    poll: 0

  - name: wait for server to restart
    local_action:
      module: wait_for
        host={{ ansible_ssh_host }}
        port={{ ansible_ssh_port }}
        delay={{ v_restart_delay }}
        timeout={{ v_restart_timeout }}
    sudo: no
```

## vars

```yaml
---
v_private_users:
  # reset root pwd
  - username: "root"
    password: "$6$rounds=100000$/e1ecbef532ba46f1aa72cafd888f0cf13ed0270926bb497ea9c8f857f987e54518d8ad40577740c9b821f9e27a30cf01150e45"

  # add an provisioning account
  - username: "provisioner"
    groups: "sshusers,provisioning"
    key: "/path/to/key/id_rsa.provisioner.pub"
    password: "$6$rounds=100000$f73bfd8d648849a4841cf8a0529d4ee0fd610df839374432afa5bbd0a626c35f3844883fcd614808bf299a1c730b984b839380s"
```

## Running

To run the example playbook, you would issue something similar to this:
```bash
ansible-playbook playbook.yml -i inventory
```
