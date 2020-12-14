data "template_file" "user_data" {
  template = "${file("${path.module}/cloud_init.cfg")}"
}

# Use CloudInit to add the instance
resource "libvirt_cloudinit_disk" "commoninit" {
  name = "centoscommoninit.iso"
  user_data      = "${data.template_file.user_data.rendered}"
}

# Define KVM domain to create
resource "libvirt_domain" "centos" {
  count = "${var.vms_num}"
  name = "${var.vms_name[count.index]}"
  memory = "${var.mem[count.index]}"
  vcpu   = "${var.cpu[count.index]}"

  network_interface {
    network_name = "default"
  }

  disk {
    volume_id = "${libvirt_volume.this[count.index].id}"
  }

  cloudinit = "${libvirt_cloudinit_disk.commoninit.id}"

  console {
    type = "pty"
    target_type = "serial"
    target_port = "0"
  }

  graphics {
    type = "spice"
    listen_type = "address"
    autoport = true
  }
}
