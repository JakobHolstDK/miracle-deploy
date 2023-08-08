resource "netbox_rack" "rack1" {
  name     = "rack1"
  site_id  = netbox_site.dc_west.id
  status   = "reserved"
  width    = 19
  u_height = 48
}
