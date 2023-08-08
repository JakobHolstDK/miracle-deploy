resource "netbox_location" "test" {
  name        = "test"
  description = "my description"
  site_id     = netbox_site.dc_west.id
  tenant_id   = netbox_tenant.customer_a.id
}
