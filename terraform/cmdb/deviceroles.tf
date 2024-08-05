resource "netbox_device_role" "virtualserver" {
  color_hex = "ff00ff"
  name      = "virtual"
}

resource "netbox_device_role" "workstation" {
  color_hex = "ff0000"
  name      = "workstation"
}

resource "netbox_device_role" "server" {
  color_hex = "ff40ff"
name      = "server"
}

resource "netbox_device_role" "swarm" {
  color_hex = "00c0cf"
name      = "swarm"
}

resource "netbox_device_role" "slurm" {
  color_hex = "fcc0cf"
name      = "slurm"
}

resource "netbox_device_role" "ansible" {
  color_hex = "aabbcc"
name      = "ansible"
}

resource "netbox_device_role" "default" {
  color_hex = "fff0ff"
  name      = "default"
}
