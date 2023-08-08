resource "netbox_rack_reservation" "rack1reserved" {
  rack_id     = netbox_rack.rack1.id
  units       = [1, 2, 3, 4, 5]
  user_id     = 1
  description = "my description"
}
