resource "lxd_volume" "volume" {
  name = var.profile.volume_name
  pool = "${lxd_storage_pool.pool.name}"

 
}


