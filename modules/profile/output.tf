output "pool" {
  value = lxd_storage_pool.pool.name
}
output "network" {
  value = lxd_network.network.name
}
output "volume" {
  value = lxd_volume.volume.name
}