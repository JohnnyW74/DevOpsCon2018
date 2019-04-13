installieren von Docker auf den Nodes
===

+ Eintragen der Server im Inventory

```
vi host

        k8s-master:
          hosts:
            192.168.122.142:

        k8s-worker:
          hosts:
            192.168.122.36:
            192.168.122.6:
```
* auch möglich diesen Schritt zu automatisieren z.B.:
** python-script welches aus libvirt heraus ansible-inventorys erzeugt
** hook in terraform

```ansible-playbook installDocker.yml --limit kvm```


benutzte ansible-role https://github.com/JohnnyW74/DevOpsCon2018/blob/master/playbooks/roles/installDocker/

[zurück](https://github.com/JohnnyW74/DevOpsCon2018/blob/master/doc/08-create-3-nodes.md) [weiter](https://github.com/JohnnyW74/DevOpsCon2018/blob/master/doc/10-create-k8s-cluster.md)

