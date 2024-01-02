
resource "netbox_tenant_group" "knowit" {
  name = "knowit"
  description = "tenants related to Knowit "
  slug = "knowit"
}

resource "netbox_tenant_group" "customers" {
  name = "customers"
  description = "tenants related to our customers"
  slug = "customers"
}

