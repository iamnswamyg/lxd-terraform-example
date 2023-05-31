output "network_names" {
  value = { for net in lxd_network.network : net.name => net }
}
