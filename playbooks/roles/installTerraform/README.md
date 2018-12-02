installTerraform
=========

installing terraform an terraform-provider-libvirt

read this for terraform-documentation: https://www.terraform.io/intro/getting-started/install.html
read this for terraform-provider-libvirt-documentation: https://github.com/dmacvicar/terraform-provider-libvirt


Role Variables
--------------

- roleVarTerraformDownload: download-link for terraform
- roleVarTerraformDownloadChecksum: sha256-checksum for download terraform
- roleVarTerraformProviderLibvirtDownload: download-link for terraform provider libvirt

Dependencies
------------

https://www.terraform.io/
https://github.com/dmacvicar/terraform-provider-libvirt

Example Playbook
----------------

```
---
- hosts: local
  roles:
    - installTerraform
...
```

Author Information
------------------

JohnnyW74
