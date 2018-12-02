installieren von Docker auf den Nodes
=

Eintragen der Server im Inventory
```
vi inventories/hosts.yml

        k8s-master:
          hosts:
            192.168.122.142:

        k8s-worker:
          hosts:
            192.168.122.36:
            192.168.122.6:
```

Befehl:```ansible-playbook installDocker.yml```


Link zu Sourcen:
https://github.com/JohnnyW74/DevOpsCon2018/playbooks/role/installDocker/

[weiter](https://github.com/JohnnyW74/DevOpsCon2018/blob/master/doc/10-create-k8s-cluster.md)