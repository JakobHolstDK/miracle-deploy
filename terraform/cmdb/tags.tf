resource "netbox_tag" "os_redhat"             { 
name      = "RedHat"            
color_hex = "ff00ff" 
}
resource "netbox_tag" "os_windows"          { 
name      = "Microsoft Windows" 
color_hex = "ff40ff" 
}
resource "netbox_tag" "os_ubuntu"           { 
name      = "Ubuntu"            
color_hex = "ff40ff" 
}
resource "netbox_tag" "os_linux"            { 
name      = "genric linux"      
color_hex = "ff50ff" 
}
resource "netbox_tag" "os_debian"           { 
name      = "Debian"            
color_hex = "ff60ff" 
}
resource "netbox_tag" "role_openstack_overcloud"     { 
name      = "overcloud"        
color_hex = "ff70ff" 
}
resource "netbox_tag" "role_openstack_undercloud"     { 
name      = "undercloud"        
color_hex = "ff70ff" 
}
resource "netbox_tag" "role_monitoring"     { 
name      = "Monitoring"        
color_hex = "ff70ff" 
}
resource "netbox_tag" "role_backup"         { 
name      = "Backup"            
color_hex = "ff80ff" 
}
resource "netbox_tag" "SLA_production"      { 
name      = "Production"        
color_hex = "ff94ff" 
}
resource "netbox_tag" "SLA_preproduction"   { 
name      = "PreProduction"     
color_hex = "ff93ff" 
}
resource "netbox_tag" "kalm"   { 
name      = "kalm"     
color_hex = "ff93ff" 
}
resource "netbox_tag" "satellite"   { 
name      = "satellite"     
color_hex = "ff9322" 
}
resource "netbox_tag" "nfs"   { 
name      = "nfs"     
color_hex = "ff9322" 
}
resource "netbox_tag" "openstack"   { 
name      = "openstack"     
color_hex = "ff9311" 
}
resource "netbox_tag" "openshiftmaster"   { 
name      = "openshiftmaster"     
color_hex = "ff4311" 
}
resource "netbox_tag" "openshiftworker"   { 
name      = "openshiftworker"     
color_hex = "ff4316" 
}


resource "netbox_tag" "SLA_qa"              { 
name      = "Quality assurance" 
color_hex = "ff92ff" 
}
resource "netbox_tag" "SLA_test"            { 
name      = "Test"              
color_hex = "ff91ff" 
}

