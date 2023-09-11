resource "netbox_virtual_machine" "satellite" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "satellite${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "undercloud", "Backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-8"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}


resource "netbox_virtual_machine" "kalm" {
  count = 3
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "kalm${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "undercloud", "Backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-8"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}


resource "netbox_virtual_machine" "awx" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "awx${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "undercloud", "Backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}


resource "netbox_virtual_machine" "undercloud" {
  count = 3
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "undercloud${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "undercloud", "Backup" ]
  disk_size_gb = 100
  memory_mb    = 8192
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9.0"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}

resource "netbox_virtual_machine" "ostackctrl" {
  count = 3
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "ostackctrl${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "undercloud", "Backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9.0"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}


resource "netbox_virtual_machine" "ostackcompute" {
  count = 3
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "ostackcompute${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "undercloud", "Backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9.0"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}






