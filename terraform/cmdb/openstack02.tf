resource "netbox_virtual_machine" "openshiftmaster" {
  count = 3
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "openshiftmaster${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat", "role_backup" ]
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

resource "netbox_virtual_machine" "openshiftworker" {
  count = 3
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "openshiftworker${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat", "role_backup" ]
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

resource "netbox_virtual_machine" "thinlincrhel8" {
  count = 1
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "thinlinchel8${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 100
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

resource "netbox_virtual_machine" "thinlincrhel9" {
  count = 1
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "thinlinchel9${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 100
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

