resource "netbox_virtual_machine" "prodwireguard001" {
  cluster_id   = netbox_cluster.ssh.id
  name         = "prodwireguard001"
  tags         = [ "os_redhat", "role_backup" , "role_wireguard"]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode({
    "operating_system" = "rhel-9"
    "rhel_org" = 6207854
    "activation_key" = "Faceted-Oil-Scion6"
    "wireguard" = { 
		"role" = "server"
		"public_key" = ""
                "ip4": ""
		}
  })
}
