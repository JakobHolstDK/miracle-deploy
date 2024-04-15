terraform {
  required_providers {
    netbox = {
      source  = "e-breuninger/netbox"
      version = ">= 0.2.0"
    }
  }
}

provider "netbox" {
     server_url = "https://netbox.openknowit.com"
  # Configuration options
}
