resource "netbox_virtual_machine" "master" {
  count = 3
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "master${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "undercloud", "Backup" ]
  disk_size_gb = 100
  memory_mb    = 8192
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9.2"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}

resource "netbox_virtual_machine" "worker" {
  count = 3
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "worker${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "undercloud", "Backup" ]
  disk_size_gb = 100
  memory_mb    = 8192
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9.2"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}











