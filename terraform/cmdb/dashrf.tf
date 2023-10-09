resource "netbox_virtual_machine" "bremenawx" {
  count = 1
  cluster_id   = netbox_cluster.dashrf.id
  name         = "bremenawx${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" , "role_awx", "role_zabbix"]
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

resource "netbox_virtual_machine" "bremensat" {
  count = 1
  cluster_id   = netbox_cluster.dashrf.id
  name         = "bremensat${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" , "role_awx", "role_zabbix"]
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
