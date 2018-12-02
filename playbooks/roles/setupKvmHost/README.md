setupKvmHost
=========

Install all i need for working with kvm

Requirements
------------

Working ubuntu - tested on 18.04 - and ansible

Role Variables
--------------

roleVarVmHostName1 defines your default storage pool

Dependencies
------------

After executing this role for the first time you have to reboot, because rightsmanagement for virt-manager

Example Playbook
----------------

```
---
- hosts: local
  become: yes
  roles:
    - setupKvmHost
...
```

Author Information
------------------

JohnnyW74
