resource "netbox_site" "dc_west" {
  name      = "Datacenter west"
  facility  = "Data center"
  latitude  = "-45.4085"
  longitude = "30.1496"
  status    = "staging"
  timezone  = "Africa/Johannesburg"
}
