# Ansible role: znc

Install and configure ZNC, an IRC bouncer.

# Requirements

OS type(s):
- RedHat/CentOS

# Role Variables

- `v_znc_data_directory`: Where ZNC will store configuration.
- `v_znc_ssl_cert`: The certificate ZNC will use to protect comms between the ZNC service and the users IRC client.
- `v_znc_overwrite_ssl_cert`: Whether or not to overwrite an existing SSL cert every time the role is run.
- `v_znc_listen_ip`: The IP the ZNC service should listen on.  I recommend you set this to 127.0.0.1 and use SSH tunneling/port forwarding to access the service.  Wildcards are not supported.
- `v_znc_allow_ip`: The IP that is allowed to connect to the ZNC service.  I recommend you set this to 127.0.0.1 and use SSH tunneling/port forwarding to access the service.  Wildcards (*) are supported.
- `v_znc_listen_port`: The TCP port the ZNC should listen on.
- `v_znc_module_webadmin`: Enable/disable the web management console.
- `v_znc_module_adminlog`: Enable/disable administrative logging.
- `v_znc_users`: An array of objects that define a given user on ZNC
-- `nickname`: The users nickname, this variable is also used for the users realname (who uses real names on IRC?)
-- `nickname_alt`: The users alternate nickname if their primary nick is already taken.
-- `admin`: Boolean indicating if the user is a ZNC admin.
-- `quit_msg`: The users IRC quit message.
-- `timezone`: The users timezone.
-- `salt`: A random salt.
-- `hash`: A hash (SHA256) of the password + `salt`.
-- `modules`: An array of user modules to load.
--- `name`: The name of the user module.
--- `template`: Boolean indicating if the user module has a template.
-- `networks`: An array of objects that how ZNC behaves on a given network
--- `name`: The IRC network name.
--- `server`: The IRC network server including the port, for example: "chat.freenode.net +7070"
--- `modules`: An array of network modules to load.
---- `name`: The name of the network module.
---- `template`: Boolean indicating if the network module has a template.

## Notes

### Salt and password hash

You can create a 20 character random salt as follows:

```bash
openssl rand -base64 15
```

To create the salted hash, you can do something like this:

```bash
echo -n passwordsalt | openssl sha -sha256
```

# Dependencies

None.

# Example Playbook

```yaml
- hosts: all
  become: true
  gather_facts: yes
  roles:
     - znc
```

# TODO

- Add SASL configuration: http://wiki.znc.in/Sasl
- Add perform configuration: http://wiki.znc.in/Perform

# Author Information

https://github.com/craighurley/
