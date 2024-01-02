
resource "netbox_tenant" "openknowit" {
  name = "openknowit"
  description = "Openknow.com for demo purpose"
  slug = "openknowit"
  group_id = netbox_tenant_group.knowit.id
}
resource "netbox_tenant" "dashrf" {
  name = "dashrf"
  description = "Internal server in Miracle OSI"
  slug = "dashrf"
  group_id = netbox_tenant_group.knowit.id
}
resource "netbox_tenant" "regionmidt" {
  name = "regionmidt"
  description = " region midtjylland"
  slug = "regionmidt"
  group_id = netbox_tenant_group.customers.id
}
resource "netbox_tenant" "tusass" {
  name = "tusass"
  description = "telegrønland"
  slug = "tusass"
  group_id = netbox_tenant_group.customers.id
}
resource "netbox_tenant" "ku" {
  name = "ku"
  description = "Københavns universitet"
  slug = "ku"
  group_id = netbox_tenant_group.customers.id
}
