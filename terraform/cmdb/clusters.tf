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

resource "netbox_cluster" "dashapp" {
  cluster_type_id  = netbox_cluster_type.kvm.id
  name             = "dashapp"
  cluster_group_id = netbox_cluster_group.dash.id
}

