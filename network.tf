resource "lxd_network" "network" {
  name = var.network_name

  config = {
    "ipv4.address" = var.network_ipv4
    "ipv4.nat"     = var.network_ipv4_nat
    "ipv6.address" = var.network_ipv6
    "ipv6.nat"     = var.network_ipv6_nat
  }

  
}



