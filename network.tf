resource "lxd_network" "sample_network" {
  name = "sample_network"

  config = {
    "ipv4.address" = "192.168.0.1/24"
    "ipv4.nat"     = "true"
    "ipv6.address" = "none"
    "ipv6.nat"     = "false"
  }

  
}



