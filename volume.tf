resource "lxd_volume" "sample_volume" {
  name = "sample_volume"
  pool = "${lxd_storage_pool.sample_pool.name}"

 
}


