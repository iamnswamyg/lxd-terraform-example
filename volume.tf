resource "lxd_volume" "sample_volume" {
  name = var.volume_name
  pool = "${lxd_storage_pool.sample_pool.name}"

 
}


