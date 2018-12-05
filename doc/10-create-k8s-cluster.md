erzeugen des Clusters mit RKE
===

* Was ist RKE?

>Rancher Kubernetes Engine, an extremely simple, lightning fast Kubernetes installer that works everywhere.[1]

* Wir erzeugen in dieser Demo einen Cluster mit einem Master und zwei Workern

```ansible-playbook setupRkeCluster.yml```


benutzte ansible-role https://github.com/JohnnyW74/DevOpsCon2018/blob/master/playbooks/roles/setupRkeCluster/

[1]: https://github.com/rancher/rke

[zurück](https://github.com/JohnnyW74/DevOpsCon2018/blob/master/doc/09-install-docker.md) [weiter](https://github.com/JohnnyW74/DevOpsCon2018/blob/master/doc/11-install-kubectl.md)

