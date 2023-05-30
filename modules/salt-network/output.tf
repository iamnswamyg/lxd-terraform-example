output "salt_pool" {
  value = lxd_storage_pool.salt_pool.name
}
output "network" {
  value = lxd_network.network.name
}
output "volume" {
  value = lxd_volume.volume.name
}