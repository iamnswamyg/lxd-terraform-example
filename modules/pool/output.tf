output "storage_pools" {
  value = { for pool in lxd_storage_pool.pool : pool.name => pool }
}