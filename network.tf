resource "lxd_network" "network" {
  name = var.salt-network.network_name

  config = {
    "ipv4.address" = var.salt-network.ipv4
    "ipv4.nat"     = true
    "ipv6.address" = "none"
    "ipv6.nat"     = false
  }

  
}



