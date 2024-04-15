resource "netbox_cluster_group" "openstack" {
  description = "Servers used for openstack demo"
  name        = "openstack"
}
resource "netbox_cluster_group" "jaho" {
  description = "Servers used for jaho"
  name        = "jaho"
}

resource "netbox_cluster_group" "tusass" {
  description = "kvm Servers used for tusass"
  name        = "tusass"
}

resource "netbox_cluster_group" "dash" {
  description = "kvm Servers dash"
  name        = "dash"
}
