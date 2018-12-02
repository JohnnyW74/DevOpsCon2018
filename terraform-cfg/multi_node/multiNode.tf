provider "libvirt" {
  uri = "qemu:///system"
}

resource "libvirt_volume" "os_image_ubuntu" {
  name   = "os_image_ubuntu"
  pool   = "default"
  source = "/home/swalker/workspace/DevOpsCon2018/playbooks/roles/downloadNodeIso/files/ubuntu-18.04-server-cloudimg-amd64.img"
}

resource "libvirt_volume" "disk_ubuntu_k8s_master" {
  name           = "disk_k8s_master"
  base_volume_id = "${libvirt_volume.os_image_ubuntu.id}"
  pool           = "default"
  size           = 10000000000
}

# Use CloudInit to add our ssh-key to the instance
resource "libvirt_cloudinit_disk" "cloudinit_ubuntu_k8s_master" {
  name = "cloudinit_ubuntu_k8s_master.iso"
  pool = "default"

  user_data = <<EOF
#cloud-config
disable_root: 0
ssh_pwauth: 1
users:
  - name: root
    ssh-authorized-keys:
      - ${file("id_rsa.pub")}
growpart:
  mode: auto
  devices: ['/']
EOF
}

resource "libvirt_volume" "disk_ubuntu_k8s_worker1" {
  name           = "disk_k8s_worker1"
  base_volume_id = "${libvirt_volume.os_image_ubuntu.id}"
  pool           = "default"
  size           = 10000000000
}

# Use CloudInit to add our ssh-key to the instance
resource "libvirt_cloudinit_disk" "cloudinit_ubuntu_k8s_worker1" {
  name = "cloudinit_ubuntu_k8s_worker1.iso"
  pool = "default"

  user_data = <<EOF
#cloud-config
disable_root: 0
ssh_pwauth: 1
users:
  - name: root
    ssh-authorized-keys:
      - ${file("id_rsa.pub")}
growpart:
  mode: auto
  devices: ['/']
EOF
}

resource "libvirt_volume" "disk_ubuntu_k8s_worker2" {
  name           = "disk_k8s_worker2"
  base_volume_id = "${libvirt_volume.os_image_ubuntu.id}"
  pool           = "default"
  size           = 10000000000
}

# Use CloudInit to add our ssh-key to the instance
resource "libvirt_cloudinit_disk" "cloudinit_ubuntu_k8s_worker2" {
  name = "cloudinit_ubuntu_k8s_worker2.iso"
  pool = "default"

  user_data = <<EOF
#cloud-config
disable_root: 0
ssh_pwauth: 1
users:
  - name: root
    ssh-authorized-keys:
      - ${file("id_rsa.pub")}
growpart:
  mode: auto
  devices: ['/']
EOF
}

resource "libvirt_domain" "domain_ubuntu_k8s_master" {
  name   = "domain_ubuntu_k8s_master"
  memory = "2048"
  vcpu   = 2

  cloudinit = "${libvirt_cloudinit_disk.cloudinit_ubuntu_k8s_master.id}"

  network_interface {
    network_name   = "default"
    wait_for_lease = true
  }

console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }

  disk {
    volume_id = "${libvirt_volume.disk_ubuntu_k8s_master.id}"
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }
}

resource "libvirt_domain" "domain_ubuntu_k8s_worker1" {
  name   = "domain_ubuntu_k8s_worker1"
  memory = "1024"
  vcpu   = 1

  cloudinit = "${libvirt_cloudinit_disk.cloudinit_ubuntu_k8s_worker1.id}"

  network_interface {
    network_name   = "default"
    wait_for_lease = true
  }

console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }

  disk {
    volume_id = "${libvirt_volume.disk_ubuntu_k8s_worker1.id}"
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }
}

resource "libvirt_domain" "domain_ubuntu_k8s_worker2" {
  name   = "domain_ubuntu_k8s_worker2"
  memory = "1024"
  vcpu   = 1

  cloudinit = "${libvirt_cloudinit_disk.cloudinit_ubuntu_k8s_worker2.id}"

  network_interface {
    network_name   = "default"
    wait_for_lease = true
  }

console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }

  disk {
    volume_id = "${libvirt_volume.disk_ubuntu_k8s_worker2.id}"
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }
}


output "ips" {
  value = "\n master: ${libvirt_domain.domain_ubuntu_k8s_master.network_interface.0.addresses.0}\n worker1: ${libvirt_domain.domain_ubuntu_k8s_worker1.network_interface.0.addresses.0}\n worker2: ${libvirt_domain.domain_ubuntu_k8s_worker2.network_interface.0.addresses.0}"
}
