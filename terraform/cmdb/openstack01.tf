resource "netbox_virtual_machine" "rancher" {
  count = 3
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "rancher${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 3192
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


resource "netbox_virtual_machine" "plantuml" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "plantuml${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 3192
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

resource "netbox_virtual_machine" "automationcontroller" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "automationcontroller${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 8192
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

resource "netbox_virtual_machine" "executionnode" {
  count = 3
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "executionnode${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 3192
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

resource "netbox_virtual_machine" "automationhub" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "automationhub${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 200
  memory_mb    = 8192
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

resource "netbox_virtual_machine" "automationedacontroller" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "automationedacontroller${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 8192
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


resource "netbox_virtual_machine" "database" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "database${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 3192
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








resource "netbox_virtual_machine" "sso" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "sso${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 3192
  vcpus        = "2"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode(
        {
        "os": {
                "activation_key": "Faceted-Oil-Scion6",
                "operating_system": "rhel-8.7",
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


resource "netbox_virtual_machine" "ignite" {
  count = 3
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "ignite${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 3192
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



resource "netbox_virtual_machine" "zabbix" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "zabbix${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
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

resource "netbox_virtual_machine" "grafana" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "grafana${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 100
  memory_mb    = 3492
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


resource "netbox_virtual_machine" "jobscheduler" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "jobscheduler${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
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


resource "netbox_virtual_machine" "ansible" {
  count = 0
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "ansible${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 3500
  vcpus        = "8"
  role_id      = netbox_device_role.ansible.id
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


resource "netbox_virtual_machine" "swarm" {
  count = 0
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "swarm${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 50
  memory_mb    = 3500
  vcpus        = "8"
  role_id      = netbox_device_role.swarm.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode(
        {
        "os": {
                "activation_key": "ignite-rhel",
                "operating_system": "rhel-9.2",
                "rhel_org": "14498519"
        },
        "wireguard": {
                "network": "wgdemo",
                "public_key": "",
                "role": "client"
        },
        "swarm": {
                "name": "demoswarm"
		}
        }
  )
}




resource "netbox_virtual_machine" "slurm" {
  count = 0
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "slurm${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
  disk_size_gb = 100
  memory_mb    = 4096
  vcpus        = "1"
  role_id      = netbox_device_role.slurm.id
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
        	},
	"slurm": {
		"name": "slurmtest1"
	}
        },
  )
}



resource "netbox_virtual_machine" "awxrpm" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "awxrpm${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
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






resource "netbox_virtual_machine" "static" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "static01"
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

resource "netbox_virtual_machine" "masterelasticsearch" {
  count = 1
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "masterelasticsearch${format("%02d", count.index + 1)}"
  tags         = [ "os_redhat",  "role_backup" ]
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


