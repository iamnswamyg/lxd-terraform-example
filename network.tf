resource "lxd_network" "network" {
  name = var.network_name

  config = {
    "ipv4.address" = var.network_ipv4
    "ipv4.nat"     = true
    "ipv6.address" = "none"
    "ipv6.nat"     = false
  }

  
}



