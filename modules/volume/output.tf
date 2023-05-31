output "storage" {
  value = {
    pool=lxd_storage_pool.pool
    volume= lxd_volume.volume
  }
}