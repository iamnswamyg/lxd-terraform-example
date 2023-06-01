resource "lxd_network" "network" {
  for_each = var.networks
  name = each.key

  config = {
    "ipv4.address" = each.value.ipv4
    "ipv4.nat"     = each.value.ipv4_enabled
    "ipv6.address" = each.value.ipv6
    "ipv6.nat"     = each.value.ipv6_enabled
  }
}



