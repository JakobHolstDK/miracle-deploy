resource "netbox_virtual_machine" "dashdemo01" {
  cluster_id   = netbox_cluster.dashapp.id
  name         = "dashdemo01"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 20
  memory_mb    = 1024
  vcpus        = "1"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode(
        {
        "os": {
                "activation_key": "Faceted-Oil-Scion6",
                "operating_system": "rhel-9.2",
                "rhel_org": "6207854A"
        },
        "wireguard": {
                "network": "wgdemo",
                "public_key": "",
                "role": "client"
                }
        }
  )
}

