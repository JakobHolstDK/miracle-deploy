resource "netbox_virtual_machine" "undercloud" {
  count = 3
  cluster_id   = netbox_cluster.openstack[count.index].id
  name         = "undercloud${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "undercloud", "Backup" ]
  disk_size_gb = 40
  memory_mb    = 4092
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating system" = "RHEL9"
    "rhel_org" = 6207854
    "activation_key" = "openstack"
  })
}

resource "netbox_virtual_machine" "overcloud" {
  count = 3
  cluster_id   = netbox_cluster.openstack[count.index].id
  name         = "overcloud${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "overcloud", "Backup" ]
  disk_size_gb = 1000
  memory_mb    = 48000
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating system" = "RHEL9"
    "rhel_org" = 6207854
    "activation_key" = "openstack"
  })
}
