resource "netbox_cluster_group" "openstack" {
  description = "Servers used for openstack demo"
  name        = "openstack"
}
resource "netbox_cluster_group" "jaho" {
  description = "Servers used for jaho"
  name        = "jaho"
}
