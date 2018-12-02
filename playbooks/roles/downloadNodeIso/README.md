downloadNodeIso
=========

downloading iso-files, needed for installation on vms

Role Variables
--------------

* roleVarAlpineDownload: download link for alpine-image
* roleVarAlpineDownloadChecksum: sha256 checksum for alpine-image
* roleVarUbuntuDownload: download link for ubuntu-image
* roleVarUbuntuDownloadChecksum: sha256 checksum for ubuntu-image

Example Playbook
----------------

```
---
- hosts: local
  roles:
    - downloadNodeIso
...
```

Author Information
------------------

JohnnyW74