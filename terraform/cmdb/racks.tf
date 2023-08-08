resource "netbox_rack" "fcn1_rack1" {
  count  = 20 
  name         = "fcn1_dc${format("%02d", count.index + 1)}_rack1"
  site_id  = netbox_site.fsn1[count.index].id
  status   = "reserved"
  width    = 19
  u_height = 48
}
