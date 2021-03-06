# Ansible role: yum-update

This role updates all packages to the latest version and can be included when initially provisioning a server.  It can also be called on it's own to perform an update any time in the future.

## Requirements

OS type(s):

* RedHat/CentOS

## Role Variables

None.

## Dependencies

None.

## Example Playbook

```yaml
- hosts: all
  become: yes
  gather_facts: yes
  roles:
    - yum-update
```

```sh
ansible-playbook -i ./path/to/inventory ansible/update.yaml --user=johndoe --private-key=./path/to/id_rsa
```

## TODO

None.

## Author Information

<https://github.com/craighurley/>
