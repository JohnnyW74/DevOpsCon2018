setupAnsibleHost
=========

initialising my ansible host

Requirements
------------

For initial setup do the following things on a ubuntu-system >=18.04:

- sudo apt install python3-pip
- pip3 install ansible
- ansible-playbook setupAnsibleHost.yml -i inventories/hosts.yml

Group Variables
--------------

groupVarAnsibleGroup: local user which is used for ansible
groupVarAnsibleGid: user id of above
groupVarAnsibleUser: local group which is used for ansible
groupVarAnsibleUid: group id of above

Example Playbook
----------------

```
---
- hosts: local
  roles:
    - setupAnsibleHost
...
```

Author Information
------------------

JohnnyW74
