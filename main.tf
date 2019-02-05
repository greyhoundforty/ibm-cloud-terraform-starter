resource "random_id" "name" {
  byte_length = 4
}

resource "ibm_compute_vm_instance" "node" {
  transient = true
  count                     = "${var.node_count}"
  hostname                  = "${random_id.name.hex}-test"
  domain                    = "${var.domainname}"
  os_reference_code         = "${var.os["u18"]}"
  datacenter                = "${var.datacenter["us-south3"]}"
  network_speed             = 1000
  hourly_billing            = true
  private_network_only      = false
  flavor_key_name           = "${var.vm_flavor["micro"]}"
  local_disk                = false

  tags = [
    "terraform-test",
  ]
}
