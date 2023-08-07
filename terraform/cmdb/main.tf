module "netbox_config" {
  source = "./modules/netbox" # Path to the directory containing the module

  netbox_api_token = "your_netbox_api_token"
  netbox_server_url = "https://your_netbox_server_url"
  site_name = "New Site"
  site_description = "This is a new site created with Terraform."
}

