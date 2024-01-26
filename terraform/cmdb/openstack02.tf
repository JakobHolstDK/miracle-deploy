resource "netbox_virtual_machine" "wgtest" {
  count = 3
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "wgtest${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 1024
  vcpus        = "2"
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


resource "netbox_virtual_machine" "perconatest" {
  count = 3
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "perconatest${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 8192
  vcpus        = "8"
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


resource "netbox_virtual_machine" "tltest" {
  count = 3
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "tltest${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 3500
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





resource "netbox_virtual_machine" "dashapp" {
  count = 1
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "dashapp${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 3500
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



resource "netbox_virtual_machine" "dasweb" {
  count = 3
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "dashweb${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 3500
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



resource "netbox_virtual_machine" "dashdb" {
  count = 1
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "dashdb${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 200
  memory_mb    = 3500
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

resource "netbox_virtual_machine" "rancher" {
  count = 3
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "rancher${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 200
  memory_mb    = 3500
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


resource "netbox_virtual_machine" "eriktest" {
  count = 6
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "erik${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 30
  memory_mb    = 4096
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode(
        {
        "os": {
                "activation_key": "Faceted-Oil-Scion6",
                "operating_system": "rhel-9.3",
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


resource "netbox_virtual_machine" "rancherctl" {
  count = 1
  cluster_id   = netbox_cluster.openstack[1].id
  name         = "rancherctl${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 200
  memory_mb    = 3500
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

