resource "netbox_virtual_machine" "grafana" {
  count = 1
  cluster_id   = netbox_cluster.openstack[2].id
  name         = "grafana${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
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

resource "netbox_virtual_machine" "datawarehouse" {
  count = 1
  cluster_id   = netbox_cluster.openstack[2].id
  name         = "datawarehouse${format("%02d", count.index + 1)}"
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

resource "netbox_virtual_machine" "databroker" {
  count = 1
  cluster_id   = netbox_cluster.openstack[2].id
  name         = "databroker${format("%02d", count.index + 1)}"
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

resource "netbox_virtual_machine" "zabbix" {
  count = 1
  cluster_id   = netbox_cluster.openstack[2].id
  name         = "zabbix${format("%02d", count.index + 1)}"
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

resource "netbox_virtual_machine" "nas" {
  count = 1
  cluster_id   = netbox_cluster.openstack[2].id
  name         = "nas${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
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

resource "netbox_virtual_machine" "airflow" {
  count = 1
  cluster_id   = netbox_cluster.openstack[2].id
  name         = "airflow${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
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

resource "netbox_virtual_machine" "ckan" {
  count = 1
  cluster_id   = netbox_cluster.openstack[2].id
  name         = "ckan${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
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


resource "netbox_virtual_machine" "aap" {
  count = 1
  cluster_id   = netbox_cluster.openstack[2].id
  name         = "aap${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
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

