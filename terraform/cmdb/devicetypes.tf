resource "netbox_device_type" "nuc" {
  model           = "nuc"
  part_number     = "123"
  manufacturer_id = netbox_manufacturer.Intel.id
}
