
resource "netbox_cluster" "prodcluster01" {
  cluster_type_id  = netbox_cluster_type.ESXI700.id
  name             = "prodcluster01"
  cluster_group_id = netbox_cluster_group.vmware.id
}

resource "netbox_cluster" "prodcluster02" {
  cluster_type_id  = netbox_cluster_type.ESXI800.id
  name             = "prodcluster02"
  cluster_group_id = netbox_cluster_group.vmware.id
}

resource "netbox_cluster" "testcluster01" {
  cluster_type_id  = netbox_cluster_type.ESXI700.id
  name             = "testcluster01"
  cluster_group_id = netbox_cluster_group.vmware.id
}

resource "netbox_cluster" "testcluster02" {
  cluster_type_id  = netbox_cluster_type.ESXI800.id
  name             = "testcluster02"
  cluster_group_id = netbox_cluster_group.vmware.id
}

