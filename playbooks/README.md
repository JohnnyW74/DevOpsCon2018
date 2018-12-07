DevOpsCon2018
=========

this are the playbooks i use for my talk: https://devopsconference.de/live-demo-slideless/build-your-own-production-kubernetes-cluster-on-a-workstation/

Requirements
------------

An installation auf Ubuntu 18.04. It may work with an earlier version of Ubuntu, but it ist not tested.

Installation
------------
To setup your own ansible host you have to run:
```
sudo apt install python3-pip
pip3 install ansible
ansible-playbook setupAnsibleHost.yml -i inventories/hosts.yml -e 'ansible_python_interpreter=/usr/bin/python3'
```

Author Information
------------------

JohnnyW74
