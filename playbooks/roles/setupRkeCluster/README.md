setupRkeCluster
=========

installing a k8s cluster on vms

Role Variables
--------------

* cluster_domain: name for the kube-cluster
* canal_iface: interface on vms
* download_rke: downloadlink for rke
* download_rke_sha256: sha256 checksum for rke download

Example Playbook
----------------

```
---
- hosts: kvm
  roles:
    - setupRkeCluster
...
```

thanks to
------------------
Denis Schuldt

Author Information
------------------

JohnnyW74