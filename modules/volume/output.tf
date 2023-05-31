output "storage_volumes" {
  value = { for volume in lxd_volume.volume : volume.name => volume }
}
output "storage_pools" {
  value = module.pool.storage_pools
}