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


resource "netbox_cluster" "dashrf" {
  cluster_type_id  = netbox_cluster_type.kvm.id
  name             = "dashrf.openknowit.com"
  cluster_group_id = netbox_cluster_group.openstack.id
}
