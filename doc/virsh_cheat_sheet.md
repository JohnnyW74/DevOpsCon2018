Delete Pool

```
virsh pool-list
virsh pool-destroy default
virsh pool-delete default
virsh pool-undefine default
```

Delete Volume:
```
virsh vol-list default
virsh vol-delete --pool default disk
```

Delete Domain:
```
virsh list --all
virsh undefine doman_ubuntu_resized
```


Im Ansible-Playbook:
~~vi /etc/libvirt/qemu.conf~~
~~user = "root"~~
~~group = "root"~~
~~systemctl daemon-reload~~
~~systemctl restart libvirtd~~

setfacl -m u:libvirt-qemu:rwx /home/vms
getfacl -e /home/vms
https://github.com/jedi4ever/veewee/issues/996

Define default-pool
```
virsh pool-define-as --name default --type dir --target /home/vms
virsh pool-autostart default
virsh pool-start default
```
https://serverfault.com/questions/840519/how-to-change-the-default-storage-pool-from-libvirt/840520