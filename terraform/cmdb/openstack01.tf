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
	"system": "ignite",
	"role": "app",
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
	"zabbix":  {
                "server": "zabbix.openknowit.com",
		"hostgroups": [
			"Linux servers", 
			"Ignite servers",
			"Rhel9 servers"
			],
		"templates": [
			"Template System ignite Role app ", 
			"Template os rhel 9"
			],
		"proxy": [
			{ "name": "Zabbix Proxy 01", "default": "True"	},
			{ "name": "Zabbix Proxy 02", "default": "False"	},
			{ "name": "Zabbix Proxy 03", "default": "False"	},
			{ "name": "Zabbix Proxy 04", "default": "False"	},
			],
                }
        }
  )
}


resource "netbox_virtual_machine" "influx01" {
  cluster_id   = netbox_cluster.openstack[0].id
  name         = "influx01"
  tags         = [ "os_redhat", "role_backup" ]
  disk_size_gb = 100
  memory_mb    = 8192
  vcpus        = "8"
  role_id      = netbox_device_role.server.id
  tenant_id    = netbox_tenant.knowit.id
  local_context_data = jsonencode(
        {
        "system": "ignite",
        "role": "app",
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
        "zabbix":  {
                "server": "zabbix.openknowit.com",
                "hostgroups": [
                        "Linux servers",
                        "Ignite servers",
                        "Rhel9 servers"
                        ],
                "templates": [
                        "Template System ignite Role app ",
                        "Template os rhel 9"
                        ],
                "proxy": [
                        { "name": "Zabbix Proxy 01", "default": "True"  },
                        { "name": "Zabbix Proxy 02", "default": "False" },
                        { "name": "Zabbix Proxy 03", "default": "False" },
                        { "name": "Zabbix Proxy 04", "default": "False" },
                        ],
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
