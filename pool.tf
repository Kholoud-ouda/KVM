resource "libvirt_pool" "this" {
 name = "centos-pool2"
 type = "dir"
 path = "/libvirt_images/centos-pool2/"
}

resource "libvirt_volume" "this" {
  count = "${var.vms_num}"
  name = "${var.vms_name[count.index]}"
  pool = "${libvirt_pool.this.name}"
  source = "https://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud.qcow2"
  #source = "./CentOS-7-x86_64-GenericCloud.qcow2"
  format = "qcow2"
}
