resource "lxd_volume" "volume" {
  name = var.network.volume_name
  pool = "${lxd_storage_pool.pool.name}"

 
}


