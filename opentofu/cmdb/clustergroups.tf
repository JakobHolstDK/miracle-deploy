
resource "netbox_cluster_group" "vmware" {
  description = "Clusters running vmware EXSI"
  name        = "vmware"
}
resource "netbox_cluster_group" "openstack" {
  description = "Clusters running openstack"
  name        = "openstack"
}
resource "netbox_cluster_group" "kvm" {
  description = "Clusters running kvm"
  name        = "kvm"
}
