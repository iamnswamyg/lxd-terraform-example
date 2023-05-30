resource "lxd_volume" "volume" {
  name = var.volume_name
  pool = "${lxd_storage_pool.pool.name}"

 
}


