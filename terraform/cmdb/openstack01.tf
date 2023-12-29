resource "netbox_virtual_machine" "gusti" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "gusti01"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 500
  memory_mb    = 16192
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





resource "netbox_virtual_machine" "demotl" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demotl01"      
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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

resource "netbox_virtual_machine" "cv01" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "cv01"      
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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

resource "netbox_virtual_machine" "ignite01" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "ignite01"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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


resource "netbox_virtual_machine" "selinux01" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "selinux01"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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



resource "netbox_virtual_machine" "openbuildservice" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "openbuildservice01"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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


resource "netbox_virtual_machine" "demoisilon" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoisilon"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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


resource "netbox_virtual_machine" "rpmrepo01" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "rpmrepo01" 
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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

resource "netbox_virtual_machine" "demoautocat001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautocat001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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


resource "netbox_virtual_machine" "semaphore01" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "semaphore01"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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


resource "netbox_virtual_machine" "demoautoedactl001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautoedactl001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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

resource "netbox_virtual_machine" "demoautoctl001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautoctl001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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

resource "netbox_virtual_machine" "demoautoexec001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautoexec001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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

resource "netbox_virtual_machine" "demoautoexec002" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautoexec002"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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

resource "netbox_virtual_machine" "demoautoexec003" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautoexec003"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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

resource "netbox_virtual_machine" "demoautohub001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautohub001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
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

resource "netbox_virtual_machine" "demoawx001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoawx001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 100
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

resource "netbox_virtual_machine" "demoautdb001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautodb001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 100
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

resource "netbox_virtual_machine" "demoautosso001" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "demoautosso001"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 40
  memory_mb    = 8192
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode(
	{
    	"os": {
        	"activation_key": "Faceted-Oil-Scion6",
        	"operating_system": "rhel-8.8",
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




