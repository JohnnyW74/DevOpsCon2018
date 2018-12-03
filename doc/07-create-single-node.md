erzeugen eines single Nodes mit Terraform & libvirt
===

```
terraform init
terraform plan
terraform apply
```
>Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
>Outputs:
>ip = 192.168.122.218

* Verfiy Node ```ssh root@192.168.122.218```

* Löschen des Nodes ```terraform destroy```

benutzte ansible-role https://github.com/JohnnyW74/DevOpsCon2018/terraform-cfg/single_node/

[zurück](https://github.com/JohnnyW74/DevOpsCon2018/blob/master/doc/06-install-terraform.md) [weiter](https://github.com/JohnnyW74/DevOpsCon2018/blob/master/doc/08-create-3-nodes.md)

