variable "cluster_names" {
  description = "Create clusters with theese names"
  type        = list(string)
  default     = ["openstack01", "openstack02", "openstack03"]
}



resource "netbox_cluster" "openstack" {
  count = 3
  cluster_type_id  = netbox_cluster_type.kvm.id
  name             = var.cluster_names[count.index]
  cluster_group_id = netbox_cluster_group.openstack.id
}
