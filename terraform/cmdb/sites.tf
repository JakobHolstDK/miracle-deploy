resource "netbox_site" "fsn1" {
  count = 6
  name      = "fsn1-dc${format("%01d", count.index + 1)}"
  facility  = "Data center"
  latitude  = "50.4779"   # Latitude of Falkenstein, Germany
  longitude = "12.3714"   # Longitude of Falkenstein, Germany
  status    = "staging"
  timezone  = "Europe/Berlin"  # Timezone for Falkenstein, Germany
}

resource "netbox_site" "bremen" {
  name      = "bremen"
  facility  = "Office"
  latitude = "55.6760"
  longitude = "12.5649"
  status    = "active"
  timezone  = "Europe/Copenhagen"  # Timezone for CPH DK
}


