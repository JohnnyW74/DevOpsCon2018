installieren von kvm
=

Was ist kvm?
> Kernel-based Virtual Machine (KVM) is a virtualization infrastructure for the Linux kernel that turns it into a hypervisor[1]

Was ist qemu?
> QEMU (short for Quick Emulator) is a free and open-source emulator that performs hardware virtualization[2]

Was ist der Unterschied, bzw. wie ergänzen sich die beiden?

>When working together, KVM arbitrates access to the CPU and memory, and QEMU emulates the hardware resources (hard disk, video, USB, etc.)[3]

Befehl: ```ansible-playbook setupKvmHost.yml```

Link zur Rolle:
https://github.com/JohnnyW74/DevOpsCon2018/playbooks/roles/setupKvmHost/

[1]: https://en.wikipedia.org/wiki/Kernel-based_Virtual_Machine
[2]: https://en.wikipedia.org/wiki/QEMU
[3]: https://serverfault.com/questions/208693/difference-between-kvm-and-qemu

[weiter](https://github.com/JohnnyW74/DevOpsCon2018/blob/master/doc/05-download-node-image.md)