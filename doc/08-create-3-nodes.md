erzeugen von 3 Nodes für K8s Cluster
===

```
terraform init
terraform plan
terraform apply
```

>Apply complete! Resources: 10 added, 0 changed, 0 destroyed.
>Outputs:
>ips = 
 >master: 192.168.122.142
> worker1: 192.168.122.36
 >worker2: 192.168.122.6

benutzte ansible-role https://github.com/JohnnyW74/DevOpsCon2018/terraform-cfg/multi_node/

[zurück](https://github.com/JohnnyW74/DevOpsCon2018/blob/master/doc/07-create-single-node.md) [weiter](https://github.com/JohnnyW74/DevOpsCon2018/blob/master/doc/09-install-docker.md)

