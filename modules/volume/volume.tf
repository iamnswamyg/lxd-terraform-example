resource "lxd_volume" "volume" {
  name = var.storage.volume_name
  pool = "${lxd_storage_pool.pool.name}"
}


