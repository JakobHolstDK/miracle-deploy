# Define the provider configuration for NetBox
provider "netbox" {
  api_token = var.netbox_api_token
  server    = var.netbox_server_url
}

# Define the input variables for the module
variable "netbox_api_token" {
  description = "API token for authenticating with NetBox"
}

variable "netbox_server_url" {
  description = "URL of the NetBox server"
}

variable "site_name" {
  description = "Name of the site to create"
}

variable "site_description" {
  description = "Description of the site"
}

# Create a new site in NetBox
resource "netbox_site" "new_site" {
  name        = var.site_name
  description = var.site_description
}

