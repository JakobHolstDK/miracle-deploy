variable "cluster_names" {
  description = "Create clusters with theese names"
  type        = list(string)
  default     = ["openstack01.openknowit.com", "openstack02.openknowit.com", "openstack03.openknowit.com"]
}



resource "netbox_cluster" "openstack" {
  count = 3
  cluster_type_id  = netbox_cluster_type.kvm.id
  name             = var.cluster_names[count.index]
  cluster_group_id = netbox_cluster_group.openstack.id
}

resource "netbox_cluster" "ssh" {
  cluster_type_id  = netbox_cluster_type.kvm.id
  name             = "ssh.openknowit.com"
  cluster_group_id = netbox_cluster_group.jaho.id
}

resource "netbox_cluster" "egon" {
  cluster_type_id  = netbox_cluster_type.kvm.id
  name             = "egon.openknowit.com"
  cluster_group_id = netbox_cluster_group.jaho.id
}

resource "netbox_cluster" "dashrf" {
  cluster_type_id  = netbox_cluster_type.kvm.id
  name             = "dashrf.openknowit.com"
  cluster_group_id = netbox_cluster_group.openstack.id
}

resource "netbox_cluster" "kvmlab" {
  cluster_type_id  = netbox_cluster_type.kvm.id
  name             = "kvmlab.openknowit.com"
  cluster_group_id = netbox_cluster_group.openstack.id
}

resource "netbox_cluster" "rhctrl-nuk01" {
  cluster_type_id  = netbox_cluster_type.kvm.id
  name             = "rhctrl-nuk01.sianiut.tele.gl"
  cluster_group_id = netbox_cluster_group.tusass.id
}
