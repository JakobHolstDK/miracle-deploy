resource "netbox_site" "fsn1" {
  count = 20
  name      = "fsn1-dc${format("%01d", count.index + 1)}"
  facility  = "Data center"
  latitude  = "50.4779"   # Latitude of Falkenstein, Germany
  longitude = "12.3714"   # Longitude of Falkenstein, Germany
  status    = "staging"
  timezone  = "Europe/Berlin"  # Timezone for Falkenstein, Germany
}

