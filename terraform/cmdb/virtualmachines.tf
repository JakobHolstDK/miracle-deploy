resource "netbox_virtual_machine" "ansible" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "ansible${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "undercloud", "Backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating system" = "RHEL9.2"
    "rhel_org" = 6696143
    "activation_key" = "openstack"
  })
}

resource "netbox_virtual_machine" "kalm" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "kalm${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "kalm", "Backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating system" = "RHEL9"
    "rhel_org" = 6696143
    "activation_key" = "openstack"
  })
}


resource "netbox_virtual_machine" "satellite" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "satellite${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "satallite", "Backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating system" = "RHEL9.2"
    "rhel_org" = 6696143
    "activation_key" = "openstack"
  })
}

resource "netbox_virtual_machine" "nfs" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "nfs${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "nfs", "Backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating system" = "RHEL9.2"
    "rhel_org" = 6696143
    "activation_key" = "openstack"
  })
}


resource "netbox_virtual_machine" "undercloud" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "undercloud${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "undercloud", "Backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating system" = "RHEL9.0"
    "rhel_org" = 6696143
    "activation_key" = "openstack"
  })
}

resource "netbox_virtual_machine" "controller" {
  count = 3
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "controller${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "d", "Backup" ]
  disk_size_gb = 30 
  memory_mb    = 8192
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating system" = "RHEL9.0"
    "rhel_org" = 6696143
    "activation_key" = "openstack"
  })
}

resource "netbox_virtual_machine" "compute" {
  count = 3
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "compute${format("%02d", count.index + 1)}"
  tags         = [ "RedHat", "d", "Backup" ]
  disk_size_gb = 100
  memory_mb    = 48000
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating system" = "RHEL9.0"
    "rhel_org" = 6696143
    "activation_key" = "openstack"
  })
}
