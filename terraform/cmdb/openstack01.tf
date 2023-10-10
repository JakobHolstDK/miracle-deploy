resource "netbox_virtual_machine" "demoautocat001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautocat001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}

resource "netbox_virtual_machine" "demoautoctl001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautoctl001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}

resource "netbox_virtual_machine" "demoautoexec001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautoexec001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}

resource "netbox_virtual_machine" "demoautoexec002" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautoexec002"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}

resource "netbox_virtual_machine" "demoautoexec003" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautoexec003"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}

resource "netbox_virtual_machine" "demoautohub001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautohub001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}

resource "netbox_virtual_machine" "demoautdb001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautodb001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 100
  memory_mb    = 8192
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}

resource "netbox_virtual_machine" "demoautosso001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautosso001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-8"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
  })
}



