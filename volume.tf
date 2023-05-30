resource "lxd_volume" "volume" {
  name = var.salt-network.volume_name
  pool = "${lxd_storage_pool.salt_pool.name}"

 
}


